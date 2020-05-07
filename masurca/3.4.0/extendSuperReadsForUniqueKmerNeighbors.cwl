class: CommandLineTool
id: extendSuperReadsForUniqueKmerNeighbors.cwl
inputs:
- id: cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dir
  doc: '*Directory where the super-reads work is done'
  type: File
  inputBinding:
    prefix: --dir
outputs: []
cwlVersion: v1.1
baseCommand:
- extendSuperReadsForUniqueKmerNeighbors
