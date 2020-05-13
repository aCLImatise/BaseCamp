class: CommandLineTool
id: pysradb_metadata.cwl
inputs:
- id: save_to
  doc: Save metadata dataframe to file
  type: string
  inputBinding:
    prefix: --saveto
- id: db
  doc: Path to SRAmetadb.sqlite file
  type: string
  inputBinding:
    prefix: --db
- id: assay
  doc: Include assay type in output
  type: boolean
  inputBinding:
    prefix: --assay
- id: desc
  doc: Should sample_attribute be included
  type: boolean
  inputBinding:
    prefix: --desc
- id: detailed
  doc: Display detailed metadata table
  type: boolean
  inputBinding:
    prefix: --detailed
- id: expand
  doc: Should sample_attribute be expanded
  type: boolean
  inputBinding:
    prefix: --expand
outputs: []
cwlVersion: v1.1
baseCommand:
- pysradb
- metadata
