class: CommandLineTool
id: combine_tool_outputs.R.cwl
inputs:
- id: in_input_dir
  doc: "Path to the directory with standardised output .tsv files from multiple\n\
    classifiers. It is expected that input files follow the format: A_B_final-labs.tsv,\n\
    where A is dataset or origin and B is classifier used to obtain predictions."
  type: File
  inputBinding:
    prefix: --input-dir
- id: in_top_labels_num
  doc: Number of top labels to keep
  type: long
  inputBinding:
    prefix: --top-labels-num
- id: in_exclusions
  doc: Path to the yaml file with excluded terms. Must contain fields 'unlabelled'
    and 'trivial_terms'
  type: File
  inputBinding:
    prefix: --exclusions
- id: in_scores
  doc: 'Boolean: Are prediction scores available for the given method? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --scores
- id: in_output_table
  doc: Path to the output table in text format
  type: File
  inputBinding:
    prefix: --output-table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_table
  doc: Path to the output table in text format
  type: File
  outputBinding:
    glob: $(inputs.in_output_table)
cwlVersion: v1.1
baseCommand:
- combine_tool_outputs.R
