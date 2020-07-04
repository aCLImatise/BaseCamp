class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extendSuperReadsBasedOnUniqueExtensions.cwl
inputs:
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
- id: cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- extendSuperReadsBasedOnUniqueExtensions
