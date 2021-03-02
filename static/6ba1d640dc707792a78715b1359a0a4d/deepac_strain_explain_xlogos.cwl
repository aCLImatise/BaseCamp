class: CommandLineTool
id: deepac_strain_explain_xlogos.cwl
inputs:
- id: in_fast_a_dir
  doc: Directory containing motifs per filter (.fasta)
  type: Directory?
  inputBinding:
    prefix: --fasta_dir
- id: in_scores_dir
  doc: "Directory containing nucleotide scores per filter\n(.csv)"
  type: Directory?
  inputBinding:
    prefix: --scores_dir
- id: in_logo_dir
  doc: "Directory containing motifs in weighted transfac\nformat (only required if\
    \ weighted weblogos should be\ncreated)"
  type: Directory?
  inputBinding:
    prefix: --logo_dir
- id: in_gain
  doc: "Color saturation gain. Weblogo colors reach saturation\nwhen the average nt\
    \ score=1/gain. Default: 128000.\nRecommended: input length * number of filters."
  type: long?
  inputBinding:
    prefix: --gain
- id: in_train_data
  doc: Training data set to compute GC-content
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
- id: in_x_logos
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
- xlogos
