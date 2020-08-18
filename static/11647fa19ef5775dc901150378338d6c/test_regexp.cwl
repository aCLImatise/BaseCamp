class: CommandLineTool
id: ../../../test_regexp.cwl
inputs:
- id: debug_show_compiled
  doc: 'debug: show compiled code; implies -i'
  type: boolean
  inputBinding:
    prefix: -d
- id: show_information_compiled
  doc: show information about compiled pattern
  type: boolean
  inputBinding:
    prefix: -i
- id: set_size_offsets
  doc: set size of offsets vector to <n>
  type: string
  inputBinding:
    prefix: -o
- id: use_posix_interface
  doc: use POSIX interface
  type: boolean
  inputBinding:
    prefix: -p
- id: output_store_information
  doc: output store information
  type: boolean
  inputBinding:
    prefix: -s
- id: time_compilation_execution
  doc: time compilation and execution
  type: boolean
  inputBinding:
    prefix: -t
- id: pcre_test
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- test_regexp
