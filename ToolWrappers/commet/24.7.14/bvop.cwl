class: CommandLineTool
id: bvop.cwl
inputs:
- id: in_performs_not_filebv
  doc: ': performs NOT on file1.bv'
  type: boolean
  inputBinding:
    prefix: -n
- id: in__performs_filebv_and_filebv
  doc: ': performs file1.bv AND file2.bv'
  type: File
  inputBinding:
    prefix: -a
- id: in__performs_filebv_or_filebv
  doc: ': performs file1.bv OR file2.bv'
  type: File
  inputBinding:
    prefix: -o
- id: in_performs_filebv_not_filebv
  doc: ': performs file1.bv AND (NOT file2.bv)'
  type: File
  inputBinding:
    prefix: -d
- id: in_print_result_file
  doc: ': print result in file output.bv [Default=stdout]'
  type: File
  inputBinding:
    prefix: -p
- id: in_print_information_filebv
  doc: ': print information about file1.bv'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_prints_version_number
  doc: ': Prints the version number and exit'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_print_result_file
  doc: ': print result in file output.bv [Default=stdout]'
  type: File
  outputBinding:
    glob: $(inputs.in_print_result_file)
cwlVersion: v1.1
baseCommand:
- bvop
