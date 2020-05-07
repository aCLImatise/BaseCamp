class: CommandLineTool
id: ffindex_modify.cwl
inputs:
- id: f
  doc: file each line containing a filename -f can be specified up to 4096 times
  type: File
  inputBinding:
    prefix: -f
- id: s
  doc: sort index file
  type: boolean
  inputBinding:
    prefix: -s
- id: u
  doc: unlink entry (remove from index only)
  type: boolean
  inputBinding:
    prefix: -u
- id: v
  doc: print version and other info then exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_modify
