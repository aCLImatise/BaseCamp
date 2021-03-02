class: CommandLineTool
id: hca_dss_download_collection.cwl
inputs:
- id: in_uuid
  doc: The uuid of the collection to download
  type: string?
  inputBinding:
    prefix: --uuid
- id: in_replica
  doc: "the replica to download from. The supported\nreplicas are: aws for Amazon\
    \ Web Services, and gcp for\nGoogle Cloud Platform. [aws, gcp]"
  type: string?
  inputBinding:
    prefix: --replica
- id: in_download_dir
  doc: "The directory into which to download\n"
  type: Directory?
  inputBinding:
    prefix: --download-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- download-collection
