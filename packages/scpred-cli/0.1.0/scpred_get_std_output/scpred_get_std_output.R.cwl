class: CommandLineTool
id: scpred_get_std_output.R.cwl
inputs:
- id: in_predictions_object
  doc: Path to the Seurat predictions object in .rds format
  type: File?
  inputBinding:
    prefix: --predictions-object
- id: in_get_scores
  doc: 'Should score column be added? Default: TRUE'
  type: boolean?
  inputBinding:
    prefix: --get-scores
- id: in_classifier
  doc: Path to the classifier object in .rds format (Optional; required to add dataset
    of origin to output table)
  type: File?
  inputBinding:
    prefix: --classifier
- id: in_output_table
  doc: Path to the final output file in text format
  type: File?
  inputBinding:
    prefix: --output-table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_classifier
  doc: Path to the classifier object in .rds format (Optional; required to add dataset
    of origin to output table)
  type: File?
  outputBinding:
    glob: $(inputs.in_classifier)
- id: out_output_table
  doc: Path to the final output file in text format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_table)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scpred-cli:0.1.0--1
cwlVersion: v1.1
baseCommand:
- scpred_get_std_output.R
