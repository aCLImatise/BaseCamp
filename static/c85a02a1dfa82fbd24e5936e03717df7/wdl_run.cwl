class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/wdl_run.cwl
inputs:
- id: inputs
  doc: Path to JSON file to define inputs
  type: string
  inputBinding:
    prefix: --inputs
- id: sge
  doc: Use SGE to execute tasks
  type: boolean
  inputBinding:
    prefix: --sge
- id: wdl_file
  doc: Path to WDL File
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- wdl
- run
