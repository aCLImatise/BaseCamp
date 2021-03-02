class: CommandLineTool
id: extendSuperReadsForUniqueKmerNeighbors.cwl
inputs:
- id: in_dir
  doc: '*Directory where the super-reads work is done'
  type: File?
  inputBinding:
    prefix: --dir
- id: in_cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- extendSuperReadsForUniqueKmerNeighbors
