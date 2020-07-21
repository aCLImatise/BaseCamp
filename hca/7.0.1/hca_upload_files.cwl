class: CommandLineTool
id: ../../../hca_upload_files.cwl
inputs:
- id: target_filename
  doc: Filename to use in upload area (if you wish to change it during upload). Only
    valid when one file is being uploaded.
  type: File
  inputBinding:
    prefix: --target-filename
- id: file_extension
  doc: File extension to limit which files should be uploaded Only valid when directories
    are targeted for upload.
  type: File
  inputBinding:
    prefix: --file-extension
- id: no_transfer_acceleration
  doc: "Don't use Amazon S3 Transfer Acceleration. By default we using the aforementioned\
    \ service to upload via an endpoint geographically close to you, instead of directly\
    \ to Virginia, USA. However, in some situations this can be slower. Use the S3\
    \ Transfer Acceleration Speed Comparison Tool to determine whether you should\
    \ use this option: https://s3-accelerate- speedtest.s3-accelerate.amazonaws.com/en/accelerate-\
    \ speed-comparsion.html."
  type: boolean
  inputBinding:
    prefix: --no-transfer-acceleration
- id: quiet
  doc: Suppress normal output.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: sync
  doc: If set to true, do not upload files to an area in which the file has already
    been uploaded before
  type: boolean
  inputBinding:
    prefix: --sync
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- upload
- files
