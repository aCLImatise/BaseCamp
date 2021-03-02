class: CommandLineTool
id: build_cell_ontology_dict.R.cwl
inputs:
- id: in_input_dir
  doc: Path to the directory with condensed SDRF files
  type: File?
  inputBinding:
    prefix: --input-dir
- id: in_condensed_sd_rf
  doc: "Boolean: is the provided SDRF file in a condensed form?\nDefault: TRUE"
  type: boolean?
  inputBinding:
    prefix: --condensed-sdrf
- id: in_barcode_col_name
  doc: "Name of the barcode column in SDRF files (must be identical\nacross all files)"
  type: string?
  inputBinding:
    prefix: --barcode-col-name
- id: in_cell_label_col_name
  doc: "Name of the cell label column in SDRF files\n(must be identical across all\
    \ files)"
  type: string?
  inputBinding:
    prefix: --cell-label-col-name
- id: in_cell_ontology_col_name
  doc: "Name of the cell ontology terms column in SDRF files\n(must be identical across\
    \ all files)"
  type: string?
  inputBinding:
    prefix: --cell-ontology-col-name
- id: in_output_dict_path
  doc: Output path for serialised object containing the dictionary
  type: File?
  inputBinding:
    prefix: --output-dict-path
- id: in_output_text_path
  doc: Output path for txt version of label - term mapping
  type: File?
  inputBinding:
    prefix: --output-text-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dict_path
  doc: Output path for serialised object containing the dictionary
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dict_path)
- id: out_output_text_path
  doc: Output path for txt version of label - term mapping
  type: File?
  outputBinding:
    glob: $(inputs.in_output_text_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cell-types-analysis:0.1.11--0
cwlVersion: v1.1
baseCommand:
- build_cell_ontology_dict.R
