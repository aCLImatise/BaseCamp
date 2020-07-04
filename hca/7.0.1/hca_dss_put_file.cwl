class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_put_file.cwl
inputs:
- id: creator_uid
  doc: User ID who is creating this file.
  type: string
  inputBinding:
    prefix: --creator-uid
- id: source_url
  doc: Cloud bucket URL for source data.  Example is "s3://bucket_name/serious_dna.fa"
    .
  type: string
  inputBinding:
    prefix: --source-url
- id: uuid
  doc: A RFC4122-compliant ID for the file.
  type: string
  inputBinding:
    prefix: --uuid
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- put-file
