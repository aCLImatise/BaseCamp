class: CommandLineTool
id: tspex.cwl
inputs:
- id: input_file
  doc: Expression matrix file in the TSV, CSV or Excel formats.
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: Output TSV file containing tissue-specificity values.
  type: string
  inputBinding:
    position: 1
- id: method
  doc: 'Tissue-specificity metric. Allowed values are: "counts", "tau", "gini", "simpson",
    "shannon_specificity", "roku_specificity", "tsi", "zscore", "spm", "spm_dpm",
    "js_specificity", "js_specificity_dpm".'
  type: string
  inputBinding:
    position: 2
- id: log
  doc: 'Log-transform expression values. (default: False)'
  type: boolean
  inputBinding:
    prefix: --log
- id: disable_transformation
  doc: 'By default, tissue-specificity values are transformed so that they range from
    0 (perfectly ubiquitous) to 1 (perfectly tissue-specific). If this parameter is
    used, transformation will be disabled and each metric will have have a diferent
    range of possible values. (default: False)'
  type: boolean
  inputBinding:
    prefix: --disable_transformation
- id: threshold
  doc: 'Threshold to be used with the "counts" metric. If another method is chosen,
    this parameter will be ignored. (default: 0)'
  type: string
  inputBinding:
    prefix: --threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- tspex
