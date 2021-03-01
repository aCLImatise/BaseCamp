class: CommandLineTool
id: h5repart.cwl
inputs:
- id: in_produce_verbose_output
  doc: Produce verbose output
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_version_number
  doc: Print a version number and exit
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_io_block_size
  doc: The I/O block size, defaults to 1kB
  type: long?
  inputBinding:
    prefix: -b
- id: in_destination_member_size
  doc: The destination member size or 1GB
  type: long?
  inputBinding:
    prefix: -m
- id: in_family_to_sec_two
  doc: Change file driver from family to sec2
  type: boolean?
  inputBinding:
    prefix: -family_to_sec2
- id: in_src
  doc: The name of the source file
  type: string
  inputBinding:
    position: 0
- id: in_dst
  doc: The name of the destination files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- h5repart
