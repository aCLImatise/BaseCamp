class: CommandLineTool
id: ../../../bvop.cwl
inputs:
- id: performs_not_filebv
  doc: ': performs NOT on file1.bv'
  type: boolean
  inputBinding:
    prefix: -n
- id: _performs_filebv_and_filebv
  doc: ': performs file1.bv AND file2.bv'
  type: File
  inputBinding:
    prefix: -a
- id: _performs_filebv_or_filebv
  doc: ': performs file1.bv OR file2.bv'
  type: File
  inputBinding:
    prefix: -o
- id: performs_filebv_not_filebv
  doc: ': performs file1.bv AND (NOT file2.bv)'
  type: File
  inputBinding:
    prefix: -d
- id: print_result_file
  doc: ': print result in file output.bv [Default=stdout]'
  type: string
  inputBinding:
    prefix: -p
- id: print_information_filebv
  doc: ': print information about file1.bv'
  type: boolean
  inputBinding:
    prefix: -i
- id: prints_version_number
  doc: ': Prints the version number and exit'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- bvop
