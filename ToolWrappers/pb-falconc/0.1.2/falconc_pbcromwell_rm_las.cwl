class: CommandLineTool
id: falconc_pbcromwell_rm_las.cwl
inputs:
- id: in__command_string
  doc: =, --command=  string  "find . -name \'*.las\'"  set command
  type: boolean
  inputBinding:
    prefix: -c
- id: in__verbose_verbose
  doc: =, --verbose=  int     1                         set verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: in_dry_run
  doc: bool    false                     set dry_run
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_help
  doc: '--help-syntax                                      advanced:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- falconc
- pbcromwell-rm-las
