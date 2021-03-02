class: CommandLineTool
id: tspex.cwl
inputs:
- id: in_log
  doc: 'Log-transform expression values. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_disable_transformation
  doc: "By default, tissue-specificity values are transformed\nso that they range\
    \ from 0 (perfectly ubiquitous) to 1\n(perfectly tissue-specific). If this parameter\
    \ is\nused, transformation will be disabled and each metric\nwill have have a\
    \ diferent range of possible values.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --disable_transformation
- id: in_threshold
  doc: "Threshold to be used with the \"counts\" metric. If\nanother method is chosen,\
    \ this parameter will be\nignored. (default: 0)\n"
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_input_file
  doc: Expression matrix file in the TSV, CSV or Excel
  type: string
  inputBinding:
    position: 0
- id: in_formats_dot
  doc: output_file           Output TSV file containing tissue-specificity values.
  type: string
  inputBinding:
    position: 1
- id: in_method
  doc: "Tissue-specificity metric. Allowed values are:\n\"counts\", \"tau\", \"gini\"\
    , \"simpson\",\n\"shannon_specificity\", \"roku_specificity\", \"tsi\",\n\"zscore\"\
    , \"spm\", \"spm_dpm\", \"js_specificity\",\n\"js_specificity_dpm\"."
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tspex
