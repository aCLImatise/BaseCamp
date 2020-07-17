class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_put_collection.cwl
inputs:
- id: contents
  doc: A list of objects describing links to files, bundles, other collections, and
    metadata fragments that are part of the collection.
  type: string[]
  inputBinding:
    prefix: --contents
- id: description
  doc: A long description of the collection, formatted in Markdown.
  type: string
  inputBinding:
    prefix: --description
- id: details
  doc: Supplementary JSON metadata for the collection.
  type: string
  inputBinding:
    prefix: --details
- id: name
  doc: A short name identifying the collection.
  type: string
  inputBinding:
    prefix: --name
- id: replica
  doc: Replica to write to.
  type: string
  inputBinding:
    prefix: --replica
- id: uuid
  doc: A RFC4122-compliant ID for the collection.
  type: string
  inputBinding:
    prefix: --uuid
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- put-collection
