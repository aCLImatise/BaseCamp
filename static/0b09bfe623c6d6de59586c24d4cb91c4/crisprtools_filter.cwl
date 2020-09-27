class: CommandLineTool
id: crisprtools_filter.cwl
inputs:
- id: in_output_file_name
  doc: 'Output file name, creates a filtered copy of the input file  [default: modify
    input file inplace]'
  type: File
  inputBinding:
    prefix: -o
- id: in_filter_based_number
  doc: Filter based on the number of spacers the spacers
  type: long
  inputBinding:
    prefix: -s
- id: in_filter_based_direct
  doc: Filter based on the direct repeats
  type: long
  inputBinding:
    prefix: -d
- id: in_filter_based_flanking
  doc: Filter based on the flanking sequences
  type: long
  inputBinding:
    prefix: -f
- id: in_filter_based_spacer
  doc: Filter based on spacer coverage
  type: long
  inputBinding:
    prefix: -C
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crisprtools
- filter
