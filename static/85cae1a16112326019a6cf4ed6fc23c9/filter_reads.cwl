class: CommandLineTool
id: filter_reads.cwl
inputs:
- id: in_file_where_written
  doc: ': file where the boolean vector will be written [default=input_file.bv]'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_minimal_length_read
  doc: ': minimal length a read should have to be kept. [default=0]'
  type: long
  inputBinding:
    prefix: -l
- id: in_maximal_number_read
  doc: ': maximal number of Ns a read should contain to be kept. [default=any]'
  type: long
  inputBinding:
    prefix: -n
- id: in_minimal_shannon_index
  doc: ': minimal Shannon index a read should have to be kept. [default=0]'
  type: double
  inputBinding:
    prefix: -e
- id: in_maximum_number_selected
  doc: ': maximum number of selected reads [default=all]'
  type: long
  inputBinding:
    prefix: -m
- id: in_given_string_will
  doc: ': the given string will be written in the header of the output file. [default=command
    line]'
  type: File
  inputBinding:
    prefix: -c
- id: in_prints_version_number
  doc: ': prints the version number.'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_given_string_will
  doc: ': the given string will be written in the header of the output file. [default=command
    line]'
  type: File
  outputBinding:
    glob: $(inputs.in_given_string_will)
cwlVersion: v1.1
baseCommand:
- filter_reads
