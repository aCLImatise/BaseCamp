class: CommandLineTool
id: msspsmtable_split.cwl
inputs:
- id: i
  doc: Input file of TSV PSM table (MSGF+) format
  type: string
  inputBinding:
    prefix: -i
- id: d
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: bio_set
  doc: this enables automatic splitting on biological set names, for which a a column
    specifying these must exist.
  type: boolean
  inputBinding:
    prefix: --bioset
- id: split_col
  doc: Column number to split a PSM table on. First column is number 1
  type: string
  inputBinding:
    prefix: --splitcol
outputs: []
cwlVersion: v1.1
baseCommand:
- msspsmtable
- split
