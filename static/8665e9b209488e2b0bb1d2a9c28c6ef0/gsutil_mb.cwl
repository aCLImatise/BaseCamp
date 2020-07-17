class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gsutil_mb.cwl
inputs:
- id: specifies_default_storage
  doc: Specifies the default storage class. Default is "Standard".
  type: string
  inputBinding:
    prefix: -c
- id: can_multiregional_regional
  doc: Can be any multi-regional or regional location. See https://cloud.google.com/storage/docs/storage-classes
    for a discussion of this distinction. Default is US. Locations are case insensitive.
  type: string
  inputBinding:
    prefix: -l
- id: specifies_project_id
  doc: Specifies the project ID under which to create the bucket.
  type: string
  inputBinding:
    prefix: -p
- id: same_as_c
  doc: Same as -c.
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- mb
