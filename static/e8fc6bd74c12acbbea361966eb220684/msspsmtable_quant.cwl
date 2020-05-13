class: CommandLineTool
id: msspsmtable_quant.cwl
inputs:
- id: dbfile
  doc: '[--precursor] [--isobaric]'
  type: string
  inputBinding:
    prefix: --dbfile
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
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: precursor
  doc: Specifies to add precursor quant data from lookup DB to output table
  type: boolean
  inputBinding:
    prefix: --precursor
- id: isobaric
  doc: Specifies to add isobaric quant data from lookup DB to output table
  type: boolean
  inputBinding:
    prefix: --isobaric
outputs: []
cwlVersion: v1.1
baseCommand:
- msspsmtable
- quant
