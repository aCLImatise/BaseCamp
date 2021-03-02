class: CommandLineTool
id: gsutil_mb.cwl
inputs:
- id: in_specifies_storage_class
  doc: Specifies the default storage class. Default is "Standard".
  type: string?
  inputBinding:
    prefix: -c
- id: in_be_multiregional_location
  doc: "Can be any multi-regional or regional location. See\nhttps://cloud.google.com/storage/docs/storage-classes\n\
    for a discussion of this distinction. Default is US.\nLocations are case insensitive."
  type: string?
  inputBinding:
    prefix: -l
- id: in_specifies_project_id
  doc: Specifies the project ID under which to create the bucket.
  type: string?
  inputBinding:
    prefix: -p
- id: in_same_as_c
  doc: Same as -c.
  type: string?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gsutil
- mb
