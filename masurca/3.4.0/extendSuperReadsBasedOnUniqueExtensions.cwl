class: CommandLineTool
id: extendSuperReadsBasedOnUniqueExtensions.cwl
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
- id: mer
  doc: '*Length of mer'
  type: long
  inputBinding:
    prefix: --mer
outputs: []
cwlVersion: v1.1
baseCommand:
- extendSuperReadsBasedOnUniqueExtensions
