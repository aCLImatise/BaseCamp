class: CommandLineTool
id: md5cp.2.10.8.cwl
inputs:
- id: in_force
  doc: overwrite existing columns
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_preserve
  doc: "force replacement of existing modes on files\nand directories"
  type: boolean?
  inputBinding:
    prefix: --preserve
- id: in_recursive
  doc: "Recurses over source directories\n(directories are ignored otherwise)."
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'md5cp.2.10.8 : 2.10.8'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- md5cp.2.10.8
