class: CommandLineTool
id: deepac_explain_fa2transfac.cwl
inputs:
- id: in_in_dir
  doc: Directory containing motifs per filter (.fasta)
  type: Directory
  inputBinding:
    prefix: --in-dir
- id: in_out_dir
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: --out-dir
- id: in_weighting
  doc: Weight sequences by their DeepLIFT score
  type: boolean
  inputBinding:
    prefix: --weighting
- id: in_weight_dir
  doc: "Directory containing the DeepLIFT scores per filter\n(only required if --weighting\
    \ is chosen)\n"
  type: Directory
  inputBinding:
    prefix: --weight-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- deepac
- explain
- fa2transfac
