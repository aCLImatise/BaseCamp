class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_download_collection.cwl
inputs:
- id: uuid
  doc: The uuid of the collection to download
  type: string
  inputBinding:
    prefix: --uuid
- id: replica
  doc: 'the replica to download from. The supported replicas are: aws for Amazon Web
    Services, and gcp for Google Cloud Platform. [aws, gcp]'
  type: string
  inputBinding:
    prefix: --replica
- id: download_dir
  doc: The directory into which to download
  type: string
  inputBinding:
    prefix: --download-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- download-collection
