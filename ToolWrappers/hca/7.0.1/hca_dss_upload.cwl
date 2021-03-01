class: CommandLineTool
id: hca_dss_upload.cwl
inputs:
- id: in_src_dir
  doc: file path to a directory of files to upload to the replica.
  type: File?
  inputBinding:
    prefix: --src-dir
- id: in_replica
  doc: "the replica to upload to. The supported replicas are: aws for Amazon Web Services,\
    \ and\ngcp for Google Cloud Platform. [aws, gcp]"
  type: string?
  inputBinding:
    prefix: --replica
- id: in_staging_bucket
  doc: a client controlled AWS S3 storage bucket to upload from.
  type: long?
  inputBinding:
    prefix: --staging-bucket
- id: in_timeout_seconds
  doc: the time to wait for a file to upload to replica.
  type: File?
  inputBinding:
    prefix: --timeout-seconds
- id: in_no_progress
  doc: "if set, will not report upload progress. Note that even if this flag\nis not\
    \ set, progress will not be reported if the logging level is higher\nthan INFO\
    \ or if the session is not interactive."
  type: boolean?
  inputBinding:
    prefix: --no-progress
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- upload
