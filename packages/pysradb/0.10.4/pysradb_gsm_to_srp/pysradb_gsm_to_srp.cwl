class: CommandLineTool
id: pysradb_gsm_to_srp.cwl
inputs:
- id: in_db
  doc: Path to SRAmetadb.sqlite file
  type: File
  inputBinding:
    prefix: --db
- id: in_desc
  doc: Should sample_attribute be included
  type: boolean
  inputBinding:
    prefix: --desc
- id: in_detailed
  doc: "Output additional columns: [experiment_accession (SRX),\nsample_accession\
    \ (SRS), run_accession (SRR),\nexperiment_alias (GSM), sample_alias (GSM), run_alias\n\
    (GSM_r), study_alias (GSE)]"
  type: boolean
  inputBinding:
    prefix: --detailed
- id: in_expand
  doc: Should sample_attribute be expanded
  type: boolean
  inputBinding:
    prefix: --expand
- id: in_save_to
  doc: Save output to file
  type: File
  inputBinding:
    prefix: --saveto
- id: in_gsm_ids
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_to
  doc: Save output to file
  type: File
  outputBinding:
    glob: $(inputs.in_save_to)
cwlVersion: v1.1
baseCommand:
- pysradb
- gsm-to-srp
