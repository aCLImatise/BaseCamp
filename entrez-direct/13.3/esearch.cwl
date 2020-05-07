class: CommandLineTool
id: esearch.cwl
inputs:
- id: snp
  doc: Chromosome Base Position Default Order Heterozygosity Organism SNP_ID Success
    Rate
  type: string
  inputBinding:
    position: 0
- id: db
  doc: Database name
  type: boolean
  inputBinding:
    prefix: -db
- id: query
  doc: Query string
  type: boolean
  inputBinding:
    prefix: -query
- id: sort
  doc: Result presentation order
  type: boolean
  inputBinding:
    prefix: -sort
- id: days
  doc: Number of days in the past
  type: boolean
  inputBinding:
    prefix: -days
- id: date_type
  doc: Date field abbreviation
  type: boolean
  inputBinding:
    prefix: -datetype
- id: min_date
  doc: Start of date range
  type: boolean
  inputBinding:
    prefix: -mindate
- id: maxdate
  doc: End of date range
  type: boolean
  inputBinding:
    prefix: -maxdate
- id: field
  doc: Query words individually in field
  type: boolean
  inputBinding:
    prefix: -field
- id: pairs
  doc: Query overlapping word pairs
  type: boolean
  inputBinding:
    prefix: -pairs
- id: spell
  doc: Correct misspellings in query
  type: boolean
  inputBinding:
    prefix: -spell
- id: label
  doc: Alias for query step
  type: boolean
  inputBinding:
    prefix: -label
outputs: []
cwlVersion: v1.1
baseCommand:
- esearch
