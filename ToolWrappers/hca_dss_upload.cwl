class: CommandLineTool
id: hca_dss_upload.cwl
inputs:
- id: in_staging_bucket
  doc: "[--timeout-seconds TIMEOUT_SECONDS] [--no-progress]\n[--bundle-uuid BUNDLE_UUID]"
  type: string
  inputBinding:
    prefix: --staging-bucket
- id: in_src_dir
  doc: "file path to a directory of files to upload to the replica.\n--replica REPLICA\
    \     the replica to upload to. The supported replicas are: aws for Amazon Web\
    \ Services, and\ngcp for Google Cloud Platform. [aws, gcp]\n--staging-bucket STAGING_BUCKET\n\
    a client controlled AWS S3 storage bucket to upload from.\n--timeout-seconds TIMEOUT_SECONDS\n\
    the time to wait for a file to upload to replica.\n--no-progress         if set,\
    \ will not report upload progress. Note that even if this flag\nis not set, progress\
    \ will not be reported if the logging level is higher\nthan INFO or if the session\
    \ is not interactive.\n--bundle-uuid BUNDLE_UUID\n"
  type: File
  inputBinding:
    prefix: --src-dir
- id: in_replica
  doc: ''
  type: string
  inputBinding:
    prefix: --replica
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- dss
- upload
