class: CommandLineTool
id: scpred_get_feature_space.R.cwl
inputs:
- id: in_input_object
  doc: Path to the input object of Seurat class in .rds format
  type: File?
  inputBinding:
    prefix: --input-object
- id: in_prediction_column
  doc: Name of the metadata column that contains cell labels
  type: string?
  inputBinding:
    prefix: --prediction-column
- id: in_correction_method
  doc: 'Multiple testing correction method. Default: fdr'
  type: string?
  inputBinding:
    prefix: --correction-method
- id: in_significance_threshold
  doc: Significance threshold for principal components explaining class identity
  type: string?
  inputBinding:
    prefix: --significance-threshold
- id: in_reduction_parameter
  doc: 'Name of reduction in Seurat objet to be used to determine the feature space.
    Default: "pca"'
  type: string?
  inputBinding:
    prefix: --reduction-parameter
- id: in_output_path
  doc: Path for the modified scPred object in .rds format
  type: File?
  inputBinding:
    prefix: --output-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: Path for the modified scPred object in .rds format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scpred-cli:0.1.0--1
cwlVersion: v1.1
baseCommand:
- scpred_get_feature_space.R
