class: CommandLineTool
id: test_regexp.cwl
inputs:
- id: in_debug_show_compiled
  doc: 'debug: show compiled code; implies -i'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_show_information_compiled
  doc: show information about compiled pattern
  type: boolean
  inputBinding:
    prefix: -i
- id: in_set_size_offsets
  doc: set size of offsets vector to <n>
  type: long
  inputBinding:
    prefix: -o
- id: in_use_posix_interface
  doc: use POSIX interface
  type: boolean
  inputBinding:
    prefix: -p
- id: in_output_store_information
  doc: output store information
  type: boolean
  inputBinding:
    prefix: -s
- id: in_time_compilation_execution
  doc: time compilation and execution
  type: boolean
  inputBinding:
    prefix: -t
- id: in_pcre_test
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- test_regexp
