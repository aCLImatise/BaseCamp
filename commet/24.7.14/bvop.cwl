class: CommandLineTool
id: bvop.cwl
inputs:
- id: n
  doc: ': performs NOT on file1.bv'
  type: boolean
  inputBinding:
    prefix: -n
- id: a
  doc: ': performs file1.bv AND file2.bv'
  type: File
  inputBinding:
    prefix: -a
- id: o
  doc: ': performs file1.bv OR file2.bv'
  type: File
  inputBinding:
    prefix: -o
- id: d
  doc: ': performs file1.bv AND (NOT file2.bv)'
  type: File
  inputBinding:
    prefix: -d
- id: p
  doc: ': print result in file output.bv [Default=stdout]'
  type: string
  inputBinding:
    prefix: -p
- id: i
  doc: ': print information about file1.bv'
  type: boolean
  inputBinding:
    prefix: -i
- id: v
  doc: ': Prints the version number and exit'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- bvop
