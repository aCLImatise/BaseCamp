class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/runSpliceMap.cwl
inputs:
- id: run_dot_cfg
  doc: --  Configuration options for this run, see comments in file for details
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- runSpliceMap
