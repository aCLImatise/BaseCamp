class: CommandLineTool
id: runSpliceMap.cwl
inputs:
- id: in_run_dot_cfg
  doc: --  Configuration options for this run, see comments in file for details
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
- runSpliceMap
