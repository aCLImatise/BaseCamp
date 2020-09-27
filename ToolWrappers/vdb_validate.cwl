class: CommandLineTool
id: vdb_validate.cwl
inputs:
- id: in_blob_crc
  doc: 'Check blobs CRC32 (default: yes)'
  type: long
  inputBinding:
    prefix: --BLOB-CRC
- id: in_referential_integrity
  doc: "Check data referential integrity for\ndatabases (default: yes)"
  type: string
  inputBinding:
    prefix: --REFERENTIAL-INTEGRITY
- id: in_consistency_check
  doc: "Deeply check data consistency for tables\n(default: no)"
  type: string
  inputBinding:
    prefix: --CONSISTENCY-CHECK
- id: in_exhaustive
  doc: "Continue checking object for all possible\nerrors (default: false)"
  type: boolean
  inputBinding:
    prefix: --exhaustive
- id: in_ngc
  doc: path to ngc file
  type: File
  inputBinding:
    prefix: --ngc
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File
  inputBinding:
    prefix: --option-file
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'vdb-validate : 2.10.8'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vdb-validate
