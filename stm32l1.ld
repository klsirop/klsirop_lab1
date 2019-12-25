MEMORY
{
	flash : org = 0x08000000, len = 128k
	ram0 : org = 0x20000000, len = 16k
}

SECTIONS
{
	.text :
	{
		*(.vector_table)
		*(.text)
	} >flash
	.data :
	{
		*(.data)
	} >ram0
}
