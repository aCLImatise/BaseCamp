class: CommandLineTool
id: build_cell_ontology_dict.R.cwl
inputs:
- id: input_dir
  doc: Path to the directory with condensed SDRF files
  type: string
  inputBinding:
    prefix: --input-dir
- id: condensed_sd_rf
  doc: 'Boolean: is the provided SDRF file in a condensed form? Default: TRUE'
  type: boolean
  inputBinding:
    prefix: --condensed-sdrf
- id: barcode_col_name
  doc: Name of the barcode column in SDRF files (must be identical across all files)
  type: string
  inputBinding:
    prefix: --barcode-col-name
- id: cell_label_col_name
  doc: Name of the cell label column in SDRF files (must be identical across all files)
  type: string
  inputBinding:
    prefix: --cell-label-col-name
- id: cell_ontology_col_name
  doc: Name of the cell ontology terms column in SDRF files (must be identical across
    all files)
  type: string
  inputBinding:
    prefix: --cell-ontology-col-name
- id: output_dict_path
  doc: Output path for serialised object containing the dictionary
  type: string
  inputBinding:
    prefix: --output-dict-path
- id: output_text_path
  doc: Output path for txt version of label - term mapping
  type: string
  inputBinding:
    prefix: --output-text-path
outputs: []
cwlVersion: v1.1
baseCommand:
- build_cell_ontology_dict.R
