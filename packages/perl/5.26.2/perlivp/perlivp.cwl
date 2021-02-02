class: CommandLineTool
id: perlivp.cwl
inputs:
- id: in_preface_test_telling
  doc: a preface before each test telling what it will test.
  type: string
  inputBinding:
    prefix: -p
- id: in_mode_information_print
  doc: "mode in which extra information about test results\nis printed.  Test failures\
    \ always print out some extra information\nregardless of whether or not this switch\
    \ is set."
  type: string
  inputBinding:
    prefix: -v
- id: in_this_help_message
  doc: this help message.
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- perlivp
