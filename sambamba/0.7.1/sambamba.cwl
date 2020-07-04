class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sambamba.cwl
inputs:
- id: quiet_mode_show
  doc: quiet mode (do not show banner)
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
