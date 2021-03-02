class: CommandLineTool
id: pysradb_srx_to_srs.cwl
inputs:
- id: in_db
  doc: Path to SRAmetadb.sqlite file
  type: File?
  inputBinding:
    prefix: --db
- id: in_save_to
  doc: Save output to file
  type: File?
  inputBinding:
    prefix: --saveto
- id: in_detailed
  doc: 'Output additional columns: [run_accession, study_accession]'
  type: boolean?
  inputBinding:
    prefix: --detailed
- id: in_desc
  doc: Should sample_attribute be included
  type: boolean?
  inputBinding:
    prefix: --desc
- id: in_expand
  doc: Should sample_attribute be expanded
  type: boolean?
  inputBinding:
    prefix: --expand
- id: in_srx_ids
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
  type: File?
  outputBinding:
    glob: $(inputs.in_save_to)
hints: []
cwlVersion: v1.1
baseCommand:
- pysradb
- srx-to-srs
