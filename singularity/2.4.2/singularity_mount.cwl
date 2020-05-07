class: CommandLineTool
id: singularity_mount.cwl
inputs:
- id: writable
  doc: By default all Singularity containers are available as read only. This option
    makes the file system accessible as read/write.
  type: boolean
  inputBinding:
    prefix: --writable
- id: overlay
  doc: Use a persistent overlayFS via a writable image
  type: boolean
  inputBinding:
    prefix: --overlay
outputs: []
cwlVersion: v1.1
baseCommand:
- singularity
- mount
