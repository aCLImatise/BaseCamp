class: CommandLineTool
id: pysradb_srp_to_srx.cwl
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
  doc: "Output additional columns: [sample_accession (SRS), run_accession (SRR), experiment_alias\
    \ (GSM), sample_alias (GSM_), run_alias (GSM_r)', study_alias (GSE)]"
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
- srp-to-srx
