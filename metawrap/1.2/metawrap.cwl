class: CommandLineTool
id: ../../../metawrap.cwl
inputs:
- id: in_show_config
  doc: show where the metawrap configuration files are stored
  type: boolean
  inputBinding:
    prefix: --show-config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- metawrap
