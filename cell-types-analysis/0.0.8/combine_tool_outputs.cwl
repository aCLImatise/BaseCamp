class: CommandLineTool
id: combine_tool_outputs.R.cwl
inputs:
- id: input_dir
  doc: 'Path to the directory with standardised output .tsv files from multiple classifiers.
    It is expected that input files follow the format: A_B_final-labs.tsv, where A
    is dataset or origin and B is classifier used to obtain predictions.'
  type: string
  inputBinding:
    prefix: --input-dir
- id: top_labels_num
  doc: Number of top labels to keep
  type: string
  inputBinding:
    prefix: --top-labels-num
- id: exclusions
  doc: Path to the yaml file with excluded terms. Must contain fields 'unlabelled'
    and 'trivial_terms'
  type: string
  inputBinding:
    prefix: --exclusions
- id: scores
  doc: 'Boolean: Are prediction scores available for the given method? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --scores
- id: output_table
  doc: Path to the output table in text format
  type: string
  inputBinding:
    prefix: --output-table
outputs: []
cwlVersion: v1.1
baseCommand:
- combine_tool_outputs.R
