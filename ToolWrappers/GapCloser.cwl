class: CommandLineTool
id: GapCloser.cwl
inputs:
- id: in_string_name_required
  doc: <string>        input scaffold file name, required.
  type: boolean
  inputBinding:
    prefix: -a
- id: in_string_input_library
  doc: <string>        input library info file name, required.
  type: boolean
  inputBinding:
    prefix: -b
- id: in_string_file_name
  doc: <string>        output file name, required.
  type: File
  inputBinding:
    prefix: -o
- id: in_int_maximum_read
  doc: <int>           maximum read length (<=155), default=100.
  type: boolean
  inputBinding:
    prefix: -l
- id: in_int_overlap_default
  doc: <int>           overlap param(<=31), default=25.
  type: boolean
  inputBinding:
    prefix: -p
- id: in_int_thread_number
  doc: <int>           thread number, default=1.
  type: boolean
  inputBinding:
    prefix: -t
- id: in_one_dot_one_two
  doc: 'Contact:'
  type: double
  inputBinding:
    position: 0
- id: in_soap_at_genomics_dot_org_dot_cn
  doc: 'Usage:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_string_file_name
  doc: <string>        output file name, required.
  type: File
  outputBinding:
    glob: $(inputs.in_string_file_name)
cwlVersion: v1.1
baseCommand:
- GapCloser
