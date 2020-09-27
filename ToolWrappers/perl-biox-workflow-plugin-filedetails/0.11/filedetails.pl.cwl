class: CommandLineTool
id: filedetails.pl.cwl
inputs:
- id: in_check_dir
  doc: '- Str. Directory to check for files.'
  type: boolean
  inputBinding:
    prefix: --check_dir
- id: in_man
  doc: '- Bool. Display man page'
  type: boolean
  inputBinding:
    prefix: --man
- id: in_config_file
  doc: '- Path|Undef.'
  type: boolean
  inputBinding:
    prefix: --configfile
- id: in_print_dir
  doc: "- Bool. Default=0. Create a directory for\nmetadata, and write details to\
    \ file\nself->check_dir/meta/file.meta Defaults to\nyes."
  type: boolean
  inputBinding:
    prefix: --print_dir
- id: in_print_stdout
  doc: "- Bool. Default=1. Print metadata to STDOUT.\nDefault is yes."
  type: boolean
  inputBinding:
    prefix: --print_stdout
- id: in_line_count
  doc: '- Bool. Default=1. q(Get a line count per file)'
  type: boolean
  inputBinding:
    prefix: --line_count
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filedetails.pl
