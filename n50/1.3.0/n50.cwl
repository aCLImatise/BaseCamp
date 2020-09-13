class: CommandLineTool
id: ../../../n50.cwl
inputs:
- id: in_n_five_zero_dot
  doc: '*-b, --basename*'
  type: long
  inputBinding:
    position: 0
- id: in_line_dot
  doc: '*-n, --nonewline*'
  type: string
  inputBinding:
    position: 0
- id: in_test_two_dot_fa
  doc: 8     825   189   4     256
  type: long
  inputBinding:
    position: 0
- id: in_reads_dot_fa
  doc: 5     247   100   6     102
  type: string
  inputBinding:
    position: 1
- id: in_small_dot_fa
  doc: 6     130   65    4     65
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- n50
