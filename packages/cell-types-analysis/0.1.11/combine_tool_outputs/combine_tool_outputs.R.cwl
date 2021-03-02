class: CommandLineTool
id: combine_tool_outputs.R.cwl
inputs:
- id: in_input_dir
  doc: "Path to the directory with standardised output .tsv files from\nmultiple classifiers.\
    \ It is expected that input files follow\nthe format: A_B_final-labs.tsv, where\
    \ A is dataset or origin and\nB is classifier used to obtain predictions."
  type: File?
  inputBinding:
    prefix: --input-dir
- id: in_top_labels_num
  doc: Number of top labels to keep
  type: long?
  inputBinding:
    prefix: --top-labels-num
- id: in_exclusions
  doc: "Path to the yaml file with excluded terms. Must contain fields\n'unlabelled'\
    \ and 'trivial_terms'"
  type: File?
  inputBinding:
    prefix: --exclusions
- id: in_scores
  doc: "Boolean: Are prediction scores available for the given method?\nDefault: FALSE"
  type: boolean?
  inputBinding:
    prefix: --scores
- id: in_output_table
  doc: Path to the output table in text format
  type: File?
  inputBinding:
    prefix: --output-table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_table
  doc: Path to the output table in text format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_table)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cell-types-analysis:0.1.11--0
cwlVersion: v1.1
baseCommand:
- combine_tool_outputs.R
