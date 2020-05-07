class: CommandLineTool
id: gdsctools_regression.cwl
inputs:
- id: input_ic50
  doc: A file in TSV format with IC50s. First column should be the COSMIC identifiers
    Following columns contain the IC50s for a set of drugs. The header must be COSMIC_ID,
    Drug_1_IC50, Drug_2_IC50, ...
  type: string
  inputBinding:
    prefix: --input-ic50
- id: input_features
  doc: A matrix of genomic features. One column with COSMIC identifiers should match
    those from the IC50s matrix. Then columns named TISSUE_FACTOR, MSI_FACTOR, MEDIA_FACTOR
    should be provided. Finally, other columns will be considered as genomic features
    (e.g., mutation)
  type: string
  inputBinding:
    prefix: --input-features
- id: input_drug_decode
  doc: a decoder file
  type: string
  inputBinding:
    prefix: --input-drug-decode
- id: k_fold
  doc: kfold for regression cross validation
  type: string
  inputBinding:
    prefix: --kfold
- id: output_directory
  doc: directory where to save images and HTML files.
  type: string
  inputBinding:
    prefix: --output-directory
- id: verbose
  doc: verbose option.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: force
  doc: force creation of the directory and overwrite files.
  type: boolean
  inputBinding:
    prefix: --force
- id: method
  doc: lasso, elasticnet or ridge
  type: string
  inputBinding:
    prefix: --method
- id: license
  doc: Print the current license
  type: boolean
  inputBinding:
    prefix: --license
outputs: []
cwlVersion: v1.1
baseCommand:
- gdsctools_regression
