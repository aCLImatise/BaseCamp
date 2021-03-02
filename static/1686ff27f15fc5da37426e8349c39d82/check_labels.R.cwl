class: CommandLineTool
id: check_labels.R.cwl
inputs:
- id: in_input_file
  doc: Path to input metadata file in .tsv format
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_label_field
  doc: Name of label field in metadata file
  type: File?
  inputBinding:
    prefix: --label-field
- id: in_condensed
  doc: 'Is the provided metadata file in condensed format? Default: False'
  type: boolean?
  inputBinding:
    prefix: --condensed
- id: in_attribute_type_col_num
  doc: "Number of the attribute type field in condensed metadata file.\nDefault: 5"
  type: long?
  inputBinding:
    prefix: --attribute-type-col-num
- id: in_variable_col_num
  doc: 'Number of the label field in condensed metadata file. Default: 6'
  type: long?
  inputBinding:
    prefix: --variable-col-num
- id: in_avoid_lowercase
  doc: 'Should setting the labels to lowercase be skipped? Default: False'
  type: boolean?
  inputBinding:
    prefix: --avoid-lowercase
- id: in_output_path
  doc: Output for updated file
  type: File?
  inputBinding:
    prefix: --output-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: Output for updated file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cell-types-analysis:0.1.11--0
cwlVersion: v1.1
baseCommand:
- check_labels.R
