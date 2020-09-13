class: CommandLineTool
id: ../../../genometools_config.cwl
inputs:
- id: in_cppflags
  doc: ''
  type: boolean
  inputBinding:
    prefix: -cppflags
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genometools-config
