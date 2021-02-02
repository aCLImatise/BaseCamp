class: CommandLineTool
id: filter_stage_1.prl.cwl
inputs:
- id: in_output_dot
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_executable_dot
  doc: DESCRIPTION
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter-stage-1.prl
