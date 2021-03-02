class: CommandLineTool
id: deepac_vir_explain_franking.cwl
inputs:
- id: in_mode
  doc: "Use original filter scores or normalize scores\nrelative to true or predicted\
    \ classes."
  type: string?
  inputBinding:
    prefix: --mode
- id: in_scores_dir
  doc: Directory containing filter contribution scores (.csv)
  type: Directory?
  inputBinding:
    prefix: --scores-dir
- id: in_true_label
  doc: File with true read labels (.npy)
  type: File?
  inputBinding:
    prefix: --true-label
- id: in_pred_label
  doc: File with predicted read labels (.npy)
  type: File?
  inputBinding:
    prefix: --pred-label
- id: in_output_directory
  doc: "Output directory\n"
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_optional_arguments
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "Output directory\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepacvir:0.2.2--py_0
cwlVersion: v1.1
baseCommand:
- deepac-vir
- explain
- franking
