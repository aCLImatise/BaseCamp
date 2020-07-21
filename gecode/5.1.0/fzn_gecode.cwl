class: CommandLineTool
id: ../../../fzn_gecode.cwl
inputs:
- id: mode
  doc: '(solution, stat, gist) default: solution how to execute script'
  type: boolean
  inputBinding:
    prefix: -mode
- id: optional_false_true
  doc: '(optional: false, 0, true, 1) default: false emit statistics'
  type: boolean
  inputBinding:
    prefix: -s
- id: string_default_none
  doc: '(string) default: NONE file to send output to'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- fzn-gecode
