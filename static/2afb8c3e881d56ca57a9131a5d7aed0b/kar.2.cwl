class: CommandLineTool
id: kar.2.cwl
inputs:
- id: in_create
  doc: Create new archive.
  type: string
  inputBinding:
    prefix: --create
- id: in_extract
  doc: Extract the contents of an archive into
  type: string
  inputBinding:
    prefix: --extract
- id: in_directory
  doc: "The next token on the command line is the\nname of the directory to extract\
    \ to or\ncreate from"
  type: Directory
  inputBinding:
    prefix: --directory
- id: in_force
  doc: "(no parameter) this will cause the extract\nor create to over-write existing\
    \ files unless\nthey are write-protected. Without this\noption the program will\
    \ fail if the archive\nalready exists for create or the target\ndirectory exists\
    \ for an extract"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_long_list
  doc: "more information will be given on each file\nin test/list mode."
  type: boolean
  inputBinding:
    prefix: --long-list
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
- id: in_md_five
  doc: create md5sum-compatible checksum file
  type: boolean
  inputBinding:
    prefix: --md5
- id: in_t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: in_directory_dot
  doc: '-t|--test <archive>              Check the structural validity of an archive '
  type: Directory
  inputBinding:
    position: 0
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: '-Z|--stdout                      Direct output to stdout '
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kar.2
