class: CommandLineTool
id: ffindex_build.cwl
inputs:
- id: a
  doc: append files/indexes, also needed for sorting an already existing ffindex
  type: boolean
  inputBinding:
    prefix: -a
- id: d
  doc: a second ffindex data file for inserting/appending
  type: string
  inputBinding:
    prefix: -d
- id: i
  doc: a second ffindex index file for inserting/appending
  type: string
  inputBinding:
    prefix: -i
- id: f
  doc: file containing a list of file names, one per line -f can be specified up to
    4096 times
  type: File
  inputBinding:
    prefix: -f
- id: s
  doc: sort index file, so that the index can queried. Another append operations can
    be done without sorting.
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: print version and other info then exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_build
