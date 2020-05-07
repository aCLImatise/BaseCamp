class: CommandLineTool
id: pysradb_gsm_to_srr.cwl
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
  doc: 'Output additional columns: [experiment_accession (SRX), sample_accession (SRS),
    study_accession (SRS), run_alias (GSM_r), sample_alias (GSM), study_alias (GSE)]'
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
- gsm-to-srr
