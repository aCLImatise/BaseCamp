class: CommandLineTool
id: macse.cwl
inputs:
- id: in_prog
  doc: the program to be used among those proposed by MACSE toolkit
  type: string
  inputBinding:
    prefix: -prog
- id: in_x_mx_six_zero_zero_m
  doc: ''
  type: long
  inputBinding:
    prefix: -Xmx600m
- id: in_jar
  doc: ''
  type: boolean
  inputBinding:
    prefix: -jar
- id: in_enrich_alignment
  doc: refineAlignment
  type: string
  inputBinding:
    position: 0
- id: in_report_gaps_aat_wont
  doc: splitAlignment
  type: long
  inputBinding:
    position: 1
- id: in_remove_seq_causing_gap_py_sites
  doc: trimSequences
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- macse
