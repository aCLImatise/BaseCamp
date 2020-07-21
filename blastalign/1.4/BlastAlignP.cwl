class: CommandLineTool
id: ../../../BlastAlignP.cwl
inputs:
- id: tf_leave_stop
  doc: <T/F> Leave in stop codons T(rue)/F(alse - replace with gaps). Optional; default
    = T
  type: boolean
  inputBinding:
    prefix: -s
- id: max_proportion_allowed
  doc: <max proportion of gaps allowed in any one sequence in the final alignment>
    Optional; default = 0.95
  type: boolean
  inputBinding:
    prefix: -m
- id: tf_retain_original
  doc: <T/F> Retain original names in output file. T(rue)/F(alse). Optional; default
    = T; option F is to output the 15 character abbreviations stripped of potentially
    problematic symbols which is used in the program
  type: boolean
  inputBinding:
    prefix: -n
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- BlastAlignP
