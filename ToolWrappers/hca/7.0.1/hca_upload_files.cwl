class: CommandLineTool
id: hca_upload_files.cwl
inputs:
- id: in_target_filename
  doc: "Filename to use in upload area (if you wish to change\nit during upload).\
    \ Only valid when one file is being\nuploaded."
  type: File
  inputBinding:
    prefix: --target-filename
- id: in_file_extension
  doc: "File extension to limit which files should be uploaded\nOnly valid when directories\
    \ are targeted for upload."
  type: File
  inputBinding:
    prefix: --file-extension
- id: in_no_transfer_acceleration
  doc: "Don't use Amazon S3 Transfer Acceleration. By default\nwe using the aforementioned\
    \ service to upload via an\nendpoint geographically close to you, instead of\n\
    directly to Virginia, USA. However, in some situations\nthis can be slower. Use\
    \ the S3 Transfer Acceleration\nSpeed Comparison Tool to determine whether you\
    \ should\nuse this option: https://s3-accelerate-\nspeedtest.s3-accelerate.amazonaws.com/en/accelerate-\n\
    speed-comparsion.html."
  type: boolean
  inputBinding:
    prefix: --no-transfer-acceleration
- id: in_quiet
  doc: Suppress normal output.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_sync
  doc: "If set to true, do not upload files to an area in\nwhich the file has already\
    \ been uploaded before\n"
  type: boolean
  inputBinding:
    prefix: --sync
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- upload
- files
