class: CommandLineTool
id: atlas_place.cwl
inputs:
- id: in_db_name
  doc: db_name
  type: string?
  inputBinding:
    prefix: --db_name
- id: in_force
  doc: force
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_quiet
  doc: do not output warnings to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_tree
  doc: tree
  type: string?
  inputBinding:
    prefix: --tree
- id: in_searchable_samples
  doc: list of samples (file)
  type: File?
  inputBinding:
    prefix: --searchable_samples
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- atlas
- place
