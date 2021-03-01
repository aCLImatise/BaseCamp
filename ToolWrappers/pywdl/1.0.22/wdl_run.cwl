class: CommandLineTool
id: wdl_run.cwl
inputs:
- id: in_inputs
  doc: Path to JSON file to define inputs
  type: File?
  inputBinding:
    prefix: --inputs
- id: in_sge
  doc: Use SGE to execute tasks
  type: boolean?
  inputBinding:
    prefix: --sge
- id: in_wdl_file
  doc: Path to WDL File
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wdl
- run
