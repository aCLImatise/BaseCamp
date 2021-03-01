class: CommandLineTool
id: humann2_split_stratified_table.cwl
inputs:
- id: in_input
  doc: the stratified input table (tsv, tsv.gzip, tsv.bzip2, or biom format)
  type: long?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "the output folder\n"
  type: Directory?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "the output folder\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- humann2_split_stratified_table
