class: CommandLineTool
id: mssprottable_emptytable.cwl
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
- id: prot_col
  doc: Column number in table in which protein or gene accessions are. stored. First
    column number is 1. Use in case of not using standard {} column
  type: string
  inputBinding:
    prefix: --protcol
outputs: []
cwlVersion: v1.1
baseCommand:
- mssprottable
- emptytable
