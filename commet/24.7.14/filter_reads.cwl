class: CommandLineTool
id: ../../../filter_reads.cwl
inputs:
- id: file_where_written
  doc: ': file where the boolean vector will be written [default=input_file.bv]'
  type: string
  inputBinding:
    prefix: -o
- id: minimal_length_read
  doc: ': minimal length a read should have to be kept. [default=0]'
  type: long
  inputBinding:
    prefix: -l
- id: maximal_number_ns
  doc: ': maximal number of Ns a read should contain to be kept. [default=any]'
  type: long
  inputBinding:
    prefix: -n
- id: minimal_shannon_index
  doc: ': minimal Shannon index a read should have to be kept. [default=0]'
  type: double
  inputBinding:
    prefix: -e
- id: maximum_number_selected
  doc: ': maximum number of selected reads [default=all]'
  type: long
  inputBinding:
    prefix: -m
- id: given_string_will
  doc: ': the given string will be written in the header of the output file. [default=command
    line]'
  type: string
  inputBinding:
    prefix: -c
- id: prints_version_number
  doc: ': prints the version number.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_reads
