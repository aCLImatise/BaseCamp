class: CommandLineTool
id: pysradb_srr_to_srx.cwl
inputs:
- id: db
  doc: Path to SRAmetadb.sqlite file
  type: string
  inputBinding:
    prefix: --db
- id: detailed
  doc: 'Output additional columns: [sample_accession (SRS), study_accession (SRP),
    run_alias (GSM_r), experiment_alias (GSM), sample_alias (GSM_), study_alias (GSE)]'
  type: boolean
  inputBinding:
    prefix: --detailed
- id: desc
  doc: Should sample_attribute be included
  type: boolean
  inputBinding:
    prefix: --desc
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
- srr-to-srx
