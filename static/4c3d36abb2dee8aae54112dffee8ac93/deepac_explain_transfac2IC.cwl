class: CommandLineTool
id: deepac_explain_transfac2IC.cwl
inputs:
- id: in_in_file
  doc: File containing all filter motifs in transfac format
  type: File?
  inputBinding:
    prefix: --in-file
- id: in_train
  doc: Training data set (.npy) to normalize for GC-content
  type: string?
  inputBinding:
    prefix: --train
- id: in_out_file
  doc: "Name of the output file\n"
  type: File?
  inputBinding:
    prefix: --out-file
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
- deepac
- explain
- transfac2IC
