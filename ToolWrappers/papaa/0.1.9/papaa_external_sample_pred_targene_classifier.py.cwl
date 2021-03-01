class: CommandLineTool
id: papaa_external_sample_pred_targene_classifier.py.cwl
inputs:
- id: in_classifier_summary
  doc: location of classifier_summary file
  type: File?
  inputBinding:
    prefix: --classifier_summary
- id: in_expression_file
  doc: "path for external sample expression data\nfile[fpkm/rlog/vlog"
  type: File?
  inputBinding:
    prefix: --expression_file
- id: in_status_sign
  doc: assigned tumor [1] or normal sample status[-1]
  type: long?
  inputBinding:
    prefix: --status_sign
- id: in_figure_one
  doc: Path to save to figure 1
  type: long?
  inputBinding:
    prefix: --figure1
- id: in_figure_two
  doc: Path to save to figure 2
  type: long?
  inputBinding:
    prefix: --figure2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/papaa:0.1.9--0
cwlVersion: v1.1
baseCommand:
- papaa_external_sample_pred_targene_classifier.py
