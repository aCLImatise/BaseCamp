class: CommandLineTool
id: enrich_summary.cwl
inputs:
- id: input
  doc: SamSifter summary file to be enriched
  type: string
  inputBinding:
    prefix: --input
- id: database
  doc: "override crossreferenced tab-delimited database file to be used for annotation\
    \ (default: 'Smillie2011_SupplementaryData1.txt' from the Smillie et al. 2011\
    \ supplements)"
  type: string
  inputBinding:
    prefix: --database
- id: index
  doc: "override name of database column containing NCBI taxon IDs (default: 'NCBI_ID');\
    \ this column should contain only unique entries or duplicate rows may appear\
    \ in your summary file"
  type: string
  inputBinding:
    prefix: --index
- id: sort
  doc: "override name of database column to sort table by (default: 'Genome_Name')"
  type: string
  inputBinding:
    prefix: --sort
- id: verbose
  doc: print additional information to STDERR
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: print debug messages to STDERR
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- enrich_summary
