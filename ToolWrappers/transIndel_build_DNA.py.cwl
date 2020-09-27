class: CommandLineTool
id: transIndel_build_DNA.py.cwl
inputs:
- id: in_mapq_cut_off
  doc: :minimal MapQ in SAM for support SV event, default 15
  type: boolean
  inputBinding:
    prefix: --mapq_cutoff
- id: in_max_del_length
  doc: :maximum deletion length to be detected (10e6)
  type: boolean
  inputBinding:
    prefix: --max_del_length
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- transIndel_build_DNA.py
