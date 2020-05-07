class: CommandLineTool
id: mssprottable_ms1quant.cwl
inputs:
- id: psm_table
  doc: '[--protcol PROTEINCOL]'
  type: string
  inputBinding:
    prefix: --psmtable
- id: i
  doc: Input file of protein table format
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
- id: psm_table
  doc: PSM table file containing precursor quant data to add to table.
  type: string
  inputBinding:
    prefix: --psmtable
- id: prot_col
  doc: Column number in table in which protein or gene accessions are. stored. First
    column number is 1. Use in case of not using standard Master protein column
  type: string
  inputBinding:
    prefix: --protcol
outputs: []
cwlVersion: v1.1
baseCommand:
- mssprottable
- ms1quant
