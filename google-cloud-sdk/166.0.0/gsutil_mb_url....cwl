class: CommandLineTool
id: gsutil_mb_url....cwl
inputs:
- id: c
  doc: Specifies the default storage class. Default is "Standard".
  type: string
  inputBinding:
    prefix: -c
- id: l
  doc: Can be any multi-regional or regional location. See https://cloud.google.com/storage/docs/storage-classes
    for a discussion of this distinction. Default is US. Locations are case insensitive.
  type: string
  inputBinding:
    prefix: -l
- id: p
  doc: Specifies the project ID under which to create the bucket.
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: Same as -c.
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- mb
- url...
