class: CommandLineTool
id: pysradb_srx_to_srr.cwl
inputs:
- id: db
  doc: Path to SRAmetadb.sqlite file
  type: string
  inputBinding:
    prefix: --db
- id: desc
  doc: Should sample_attribute be included
  type: boolean
  inputBinding:
    prefix: --desc
- id: detailed
  doc: 'Output additional columns: [sample_accession, study_accession]'
  type: boolean
  inputBinding:
    prefix: --detailed
- id: expand
  doc: Should sample_attribute be expanded
  type: boolean
  inputBinding:
    prefix: --expand
- id: save_to
  doc: Save output to file
  type: string
  inputBinding:
    prefix: --saveto
outputs: []
cwlVersion: v1.1
baseCommand:
- pysradb
- srx-to-srr
