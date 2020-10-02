class: CommandLineTool
id: raSqlQuery.cwl
inputs:
- id: in_query_file
  doc: "\"-query=select list,of,fields from file where field='this'\""
  type: File
  inputBinding:
    prefix: -queryFile
- id: in_add_file
  doc: "- Add 'file' field to say where record is defined"
  type: boolean
  inputBinding:
    prefix: -addFile
- id: in_add_db
  doc: "- Add 'db' field to say where record is defined"
  type: boolean
  inputBinding:
    prefix: -addDb
- id: in_strict
  doc: '- Used only with db option.  Only report tracks that exist in db'
  type: boolean
  inputBinding:
    prefix: -strict
- id: in_key
  doc: '- Use the as the key field for merges and parenting. Default name'
  type: string
  inputBinding:
    prefix: -key
- id: in_parent
  doc: '- Merge together inheriting on parentField'
  type: boolean
  inputBinding:
    prefix: -parent
- id: in_parent_field
  doc: '- Use field as the one that tells us who is our parent. Default subTrack'
  type: string
  inputBinding:
    prefix: -parentField
- id: in_override_needed
  doc: "- If set records are only overridden field-by-field by later records\nif 'override'\
    \ follows the track name. Otherwiser later record replaces\nearlier record completely.\
    \  If not set all records overridden field by field"
  type: boolean
  inputBinding:
    prefix: -overrideNeeded
- id: in_no_inherit_field
  doc: "- If field is present don't inherit fields from parent"
  type: string
  inputBinding:
    prefix: -noInheritField
- id: in_merge
  doc: "- If there are multiple raFiles, records with the same keyField will be\n\
    merged together with fields in later files overriding fields in earlier files"
  type: boolean
  inputBinding:
    prefix: -merge
- id: in_restrict
  doc: '- restrict output to only ones with keys in file.'
  type: File
  inputBinding:
    prefix: -restrict
- id: in_db
  doc: "- Acts on trackDb files for the given database.  Sets up list of files\nappropriately\
    \ and sets parent, merge, and override all.\nUse db=all for all databases\n"
  type: long
  inputBinding:
    prefix: -db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_restrict
  doc: '- restrict output to only ones with keys in file.'
  type: File
  outputBinding:
    glob: $(inputs.in_restrict)
cwlVersion: v1.1
baseCommand:
- raSqlQuery
