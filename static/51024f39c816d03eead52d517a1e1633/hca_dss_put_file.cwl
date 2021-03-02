class: CommandLineTool
id: hca_dss_put_file.cwl
inputs:
- id: in_creator_uid
  doc: User ID who is creating this file.
  type: File?
  inputBinding:
    prefix: --creator-uid
- id: in_source_url
  doc: Cloud bucket URL for source data.  Example is "s3://bucket_name/serious_dna.fa"
    .
  type: long?
  inputBinding:
    prefix: --source-url
- id: in_uuid
  doc: A RFC4122-compliant ID for the file.
  type: File?
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
- put-file
