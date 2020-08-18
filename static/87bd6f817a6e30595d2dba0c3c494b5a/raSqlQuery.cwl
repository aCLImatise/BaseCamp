class: CommandLineTool
id: ../../../raSqlQuery.cwl
inputs:
- id: no_inherit_field
  doc: "- If field is present don't inherit fields from parent"
  type: string
  inputBinding:
    prefix: -noInheritField
- id: merge
  doc: '- If there are multiple raFiles, records with the same keyField will be merged
    together with fields in later files overriding fields in earlier files'
  type: boolean
  inputBinding:
    prefix: -merge
- id: restrict
  doc: '- restrict output to only ones with keys in file.'
  type: string
  inputBinding:
    prefix: -restrict
- id: db
  doc: '- Acts on trackDb files for the given database.  Sets up list of files appropriately
    and sets parent, merge, and override all. Use db=all for all databases'
  type: string
  inputBinding:
    prefix: -db
outputs: []
cwlVersion: v1.1
baseCommand:
- raSqlQuery
