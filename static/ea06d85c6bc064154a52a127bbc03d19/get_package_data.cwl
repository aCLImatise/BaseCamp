class: CommandLineTool
id: get_package_data.R.cwl
inputs:
- id: marker_file
  doc: Path for marker file
  type: string
  inputBinding:
    prefix: --marker-file
- id: expr_matrix
  doc: Output path for expression matrix
  type: string
  inputBinding:
    prefix: --expr-matrix
- id: pheno_data
  doc: Output path for phenotype data
  type: string
  inputBinding:
    prefix: --pheno-data
- id: feature_data
  doc: Output path for feature data
  type: string
  inputBinding:
    prefix: --feature-data
- id: output_dir
  doc: Output path for feature data
  type: string
  inputBinding:
    prefix: --output-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- get_package_data.R
