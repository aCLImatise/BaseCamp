class: CommandLineTool
id: deepac_explain_franking.cwl
inputs:
- id: in_mode
  doc: "Use original filter scores or normalize scores\nrelative to true or predicted\
    \ classes."
  type: string
  inputBinding:
    prefix: --mode
- id: in_scores_dir
  doc: Directory containing filter contribution scores (.csv)
  type: Directory
  inputBinding:
    prefix: --scores-dir
- id: in_true_label
  doc: File with true read labels (.npy)
  type: File
  inputBinding:
    prefix: --true-label
- id: in_pred_label
  doc: File with predicted read labels (.npy)
  type: File
  inputBinding:
    prefix: --pred-label
- id: in_out_dir
  doc: "Output directory\n"
  type: Directory
  inputBinding:
    prefix: --out-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: "Output directory\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- deepac
- explain
- franking
