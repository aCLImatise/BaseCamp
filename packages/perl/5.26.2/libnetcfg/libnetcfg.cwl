class: CommandLineTool
id: libnetcfg.cwl
inputs:
- id: in_the_configuration
  doc: the configuration
  type: string
  inputBinding:
    prefix: -c
- id: in_defaults_old_config
  doc: defaults from the old config (implies -c, non-interactive)
  type: string
  inputBinding:
    prefix: -d
- id: in_specific_file_old
  doc: a specific file as the old config file
  type: File
  inputBinding:
    prefix: -i
- id: in_specific_file_new
  doc: a specific file as the new config file
  type: File
  inputBinding:
    prefix: -o
- id: in_this_help
  doc: this help
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- libnetcfg
