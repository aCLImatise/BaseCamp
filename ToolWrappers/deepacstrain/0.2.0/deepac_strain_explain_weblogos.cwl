class: CommandLineTool
id: deepac_strain_explain_weblogos.cwl
inputs:
- id: in_in_dir
  doc: Directory containing motifs per filter
  type: Directory?
  inputBinding:
    prefix: --in_dir
- id: in_extension_file_format
  doc: "{.fasta,.transfac}, --file_ext {.fasta,.transfac}\nExtension of file format\
    \ of input files (.fasta or\n.transfac)"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_train_data
  doc: "Training data set (.npy) to compute GC-content.\nN-padding lowers GC!"
  type: string?
  inputBinding:
    prefix: --train_data
- id: in_out_dir
  doc: "Output directory\n"
  type: Directory?
  inputBinding:
    prefix: --out_dir
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
- id: in_web_logos
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: "Output directory\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- deepac-strain
- explain
- weblogos
