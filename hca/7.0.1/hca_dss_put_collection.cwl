class: CommandLineTool
id: ../../../hca_dss_put_collection.cwl
inputs:
- id: in_description
  doc: ''
  type: string
  inputBinding:
    prefix: --description
- id: in_replica
  doc: ''
  type: string
  inputBinding:
    prefix: --replica
- id: in_contents
  doc: A list of objects describing links to files, bundles, other collections, and
    metadata fragments that are part of the collection.
  type: string[]
  inputBinding:
    prefix: --contents
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- dss
- put-collection
