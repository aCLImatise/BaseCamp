class: CommandLineTool
id: deepac_strain_explain_transfac2IC.cwl
inputs:
- id: in_in_file
  doc: File containing all filter motifs in transfac format
  type: File?
  inputBinding:
    prefix: --in_file
- id: in_train
  doc: Training data set (.npy) to normalize for GC-content
  type: string?
  inputBinding:
    prefix: --train
- id: in_out_file
  doc: "Name of the output file\n"
  type: File?
  inputBinding:
    prefix: --out_file
- id: in_deep_ac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_explain
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_transfac_two_ic
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: "Name of the output file\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- deepac-strain
- explain
- transfac2IC
