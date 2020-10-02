class: CommandLineTool
id: BlastAlignP.cwl
inputs:
- id: in_tf_leave_stop
  doc: <T/F> Leave in stop codons T(rue)/F(alse - replace with gaps). Optional; default
    = T
  type: boolean
  inputBinding:
    prefix: -s
- id: in_max_proportion_gaps
  doc: <max proportion of gaps allowed in any one sequence in the final alignment>
    Optional; default = 0.95
  type: boolean
  inputBinding:
    prefix: -m
- id: in_tf_retain_original
  doc: <T/F> Retain original names in output file. T(rue)/F(alse). Optional; default
    = T; option F is to output the 15 character abbreviations stripped of potentially
    problematic symbols which is used in the program
  type: File
  inputBinding:
    prefix: -n
- id: in_l
  doc: ''
  type: File
  inputBinding:
    prefix: -l
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_tf_retain_original
  doc: <T/F> Retain original names in output file. T(rue)/F(alse). Optional; default
    = T; option F is to output the 15 character abbreviations stripped of potentially
    problematic symbols which is used in the program
  type: File
  outputBinding:
    glob: $(inputs.in_tf_retain_original)
cwlVersion: v1.1
baseCommand:
- BlastAlignP
