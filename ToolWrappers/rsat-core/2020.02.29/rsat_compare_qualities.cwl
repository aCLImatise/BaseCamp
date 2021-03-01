class: CommandLineTool
id: rsat_compare_qualities.cwl
inputs:
- id: in_compare_qualities
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_comparison_dot
  doc: "\e[1mAUTHORS\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: PSSM
  type: string
  inputBinding:
    position: 0
- id: in_evaluation
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 1
- id: in_all
  doc: "\e[1mOPTIONS\e[0m"
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
- rsat
- compare-qualities
