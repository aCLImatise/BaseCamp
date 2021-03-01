class: CommandLineTool
id: hca_dss_put_collection.cwl
inputs:
- id: in_contents
  doc: A list of objects describing links to files, bundles, other collections, and
    metadata fragments that are part of the collection.
  type: string[]
  inputBinding:
    prefix: --contents
- id: in_description
  doc: A long description of the collection, formatted in Markdown.
  type: string?
  inputBinding:
    prefix: --description
- id: in_details
  doc: Supplementary JSON metadata for the collection.
  type: string?
  inputBinding:
    prefix: --details
- id: in_name
  doc: A short name identifying the collection.
  type: string?
  inputBinding:
    prefix: --name
- id: in_replica
  doc: Replica to write to.
  type: string?
  inputBinding:
    prefix: --replica
- id: in_uuid
  doc: A RFC4122-compliant ID for the collection.
  type: long?
  inputBinding:
    prefix: --uuid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- put-collection
