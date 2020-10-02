class: CommandLineTool
id: filter_gff_values.cwl
inputs:
- id: in_verbose
  doc: "--str-eq TEXT  filter by custom key:value, if the argument is 'key:value'\n\
    the annotation is kept if it contains an attribute 'key'\nwhose value is exactly\
    \ 'value' as a string\n--str-in TEXT  Same as '--str-eq' but 'value' is contained\
    \ in the attribute\n--num-eq TEXT  Same as '--str-eq' but 'value' is a number\
    \ which is equal or\ngreater than\n--num-ge TEXT  Same as '--str-eq' but 'value'\
    \ is a number which is equal or\ngreater than\n--num-le TEXT  Same as '--num-ge'\
    \ but 'value' is a number which is equal or\nless than\n--num-gt TEXT  Same as\
    \ '--str-eq' but 'value' is a number which is greater\nthan\n--num-lt TEXT  Same\
    \ as '--num-ge' but 'value' is a number which is less than\n--progress     Shows\
    \ Progress Bar\n--help         Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter-gff
- values
