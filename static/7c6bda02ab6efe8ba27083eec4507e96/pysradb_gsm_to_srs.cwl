class: CommandLineTool
id: pysradb_gsm_to_srs.cwl
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
  doc: 'Output additional columns: [experiment_accession (SRX), run_accession (SRR),
    study_accession (SRP), run_alias (GSM_r), experiment_alias (GSM), study_alias
    (GSE)]'
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
- gsm-to-srs
