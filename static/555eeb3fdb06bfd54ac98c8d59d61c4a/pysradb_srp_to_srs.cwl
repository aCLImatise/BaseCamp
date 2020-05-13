class: CommandLineTool
id: pysradb_srp_to_srs.cwl
inputs:
- id: db
  doc: Path to SRAmetadb.sqlite file
  type: string
  inputBinding:
    prefix: --db
- id: save_to
  doc: Save output to file
  type: string
  inputBinding:
    prefix: --saveto
- id: detailed
  doc: 'Output additional columns: [run_accession (SRR), study_accession (SRP), experiment_alias
    (GSM), sample_alias (GSM_), run_alias (GSM_r), study_alias (GSE)]'
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
outputs: []
cwlVersion: v1.1
baseCommand:
- pysradb
- srp-to-srs
