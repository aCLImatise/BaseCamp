class: CommandLineTool
id: halLiftover.cwl
inputs:
- id: out_bed_version
  doc: specified. [default = 0]
  type: string
  inputBinding:
    prefix: --outBedVersion
outputs: []
cwlVersion: v1.1
baseCommand:
- halLiftover
