/*
   Module for writing raw data to SD card
*/

module writeToSD ()
	//SPI Commands
	/* CMD0: response R1 */
	`define CMD_GO_IDLE_STATE 8'h00
	/* CMD1: response R1 */
	`define CMD_SEND_OP_COND 8'h01
	/* CMD8: response R7 */
	`define CMD_SEND_IF_COND 8'h08
	/* CMD9: response R1 */
	`define CMD_SEND_CSD 8'h09
	/* CMD10: response R1 */
	`define CMD_SEND_CID 8'h0a
	/* CMD12: response R1 */
	`define CMD_STOP_TRANSMISSION 8'h0c
	/* CMD13: response R2 */
	`define CMD_SEND_STATUS 8'h0d
	/* CMD16: arg0[31:0]: block length, response R1 */
	`define CMD_SET_BLOCKLEN 8'h10
	/* CMD17: arg0[31:0]: data address, response R1 */
	`define CMD_READ_SINGLE_BLOCK 8'h11
	/* CMD18: arg0[31:0]: data address, response R1 */
	`define CMD_READ_MULTIPLE_BLOCK 8'h12
	/* CMD24: arg0[31:0]: data address, response R1 */
	`define CMD_WRITE_SINGLE_BLOCK 8'h18
	/* CMD25: arg0[31:0]: data address, response R1 */
	`define CMD_WRITE_MULTIPLE_BLOCK 8'h19
	/* CMD27: response R1 */
	`define CMD_PROGRAM_CSD 8'h1b
	/* CMD28: arg0[31:0]: data address, response R1b */
	`define CMD_SET_WRITE_PROT 8'h1c
	/* CMD29: arg0[31:0]: data address, response R1b */
	`define CMD_CLR_WRITE_PROT 8'h1d
	/* CMD30: arg0[31:0]: write protect data address, response R1 */
	`define CMD_SEND_WRITE_PROT 8'h1e
	/* CMD32: arg0[31:0]: data address, response R1 */
	`define CMD_TAG_SECTOR_START 8'h20
	/* CMD33: arg0[31:0]: data address, response R1 */
	`define CMD_TAG_SECTOR_END 8'h21
	/* CMD34: arg0[31:0]: data address, response R1 */
	`define CMD_UNTAG_SECTOR 8'h22
	/* CMD35: arg0[31:0]: data address, response R1 */
	`define CMD_TAG_ERASE_GROUP_START 8'h23
	/* CMD36: arg0[31:0]: data address, response R1 */
	`define CMD_TAG_ERASE_GROUP_END 8'h24
	/* CMD37: arg0[31:0]: data address, response R1 */
	`define CMD_UNTAG_ERASE_GROUP 8'h25
	/* CMD38: arg0[31:0]: stuff bits, response R1b */
	`define CMD_ERASE 8'h26
	/* ACMD41: arg0[31:0]: OCR contents, response R1 */
	`define CMD_SD_SEND_OP_COND 8'h29
	/* CMD42: arg0[31:0]: stuff bits, response R1b */
	`define CMD_LOCK_UNLOCK 8'h2a
	/* CMD55: arg0[31:0]: stuff bits, response R1 */
	`define CMD_APP 8'h37
	/* CMD58: arg0[31:0]: stuff bits, response R3 */
	`define CMD_READ_OCR 8'h3a
	/* CMD59: arg0[31:1]: stuff bits, arg0[0:0]: crc option, response R1 */
	`define CMD_CRC_ON_OFF 8'h3b
endmodule
