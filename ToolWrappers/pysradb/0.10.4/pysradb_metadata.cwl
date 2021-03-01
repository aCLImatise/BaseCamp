class: CommandLineTool
id: pysradb_metadata.cwl
inputs:
- id: in_save_to
  doc: Save metadata dataframe to file
  type: File?
  inputBinding:
    prefix: --saveto
- id: in_db
  doc: Path to SRAmetadb.sqlite file
  type: File?
  inputBinding:
    prefix: --db
- id: in_assay
  doc: Include assay type in output
  type: boolean?
  inputBinding:
    prefix: --assay
- id: in_desc
  doc: Should sample_attribute be included
  type: boolean?
  inputBinding:
    prefix: --desc
- id: in_detailed
  doc: Display detailed metadata table
  type: boolean?
  inputBinding:
    prefix: --detailed
- id: in_expand
  doc: Should sample_attribute be expanded
  type: boolean?
  inputBinding:
    prefix: --expand
- id: in_srp_id
  doc: 'optional arguments:'
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
- pysradb
- metadata
