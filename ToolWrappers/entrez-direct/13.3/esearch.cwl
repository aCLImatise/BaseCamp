class: CommandLineTool
id: esearch.cwl
inputs:
- id: in_db
  doc: Database name
  type: boolean?
  inputBinding:
    prefix: -db
- id: in_query
  doc: Query string
  type: boolean?
  inputBinding:
    prefix: -query
- id: in_sort
  doc: Result presentation order
  type: boolean?
  inputBinding:
    prefix: -sort
- id: in_days
  doc: Number of days in the past
  type: boolean?
  inputBinding:
    prefix: -days
- id: in_date_type
  doc: Date field abbreviation
  type: boolean?
  inputBinding:
    prefix: -datetype
- id: in_min_date
  doc: Start of date range
  type: boolean?
  inputBinding:
    prefix: -mindate
- id: in_maxdate
  doc: End of date range
  type: boolean?
  inputBinding:
    prefix: -maxdate
- id: in_field
  doc: Query words individually in field
  type: boolean?
  inputBinding:
    prefix: -field
- id: in_pairs
  doc: Query overlapping word pairs
  type: boolean?
  inputBinding:
    prefix: -pairs
- id: in_spell
  doc: Correct misspellings in query
  type: boolean?
  inputBinding:
    prefix: -spell
- id: in_label
  doc: Alias for query step
  type: boolean?
  inputBinding:
    prefix: -label
- id: in_gene
  doc: "Chromosome\nGene Weight\nName\nRelevance"
  type: string
  inputBinding:
    position: 0
- id: in_geo_profiles
  doc: Default Order
  type: string
  inputBinding:
    position: 1
- id: in_deviation
  doc: Mean Value
  type: string
  inputBinding:
    position: 2
- id: in_outliers
  doc: Subgroup Effect
  type: string
  inputBinding:
    position: 3
- id: in_pubmed
  doc: First Author
  type: string
  inputBinding:
    position: 4
- id: in_journal
  doc: Last Author
  type: string
  inputBinding:
    position: 5
- id: in_relevance
  doc: Title
  type: string
  inputBinding:
    position: 0
- id: in_accession
  doc: Date Modified
  type: string
  inputBinding:
    position: 0
- id: in_snp
  doc: "Chromosome Base Position\nDefault Order\nHeterozygosity\nOrganism\nSNP_ID\n\
    Success Rate\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- esearch
