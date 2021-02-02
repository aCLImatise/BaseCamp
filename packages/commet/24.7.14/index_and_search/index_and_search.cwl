class: CommandLineTool
id: index_and_search.cwl
inputs:
- id: in_file_index_mandatory
  doc: ': A file containing the list of files to index - MANDATORY'
  type: File
  inputBinding:
    prefix: -i
- id: in_search_mandatoryeach_line
  doc: ": A file containing the list of files to search - MANDATORY\nEach line of\
    \ the file corresponds to a set of files to search"
  type: File
  inputBinding:
    prefix: -s
- id: in_absolute_path_log
  doc: '</.../>: ABSOLUTE path to log folder'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_absolute_path_output
  doc: '</.../>: ABSOLUTE path to output folder'
  type: File
  inputBinding:
    prefix: -o
- id: in_size_kmers_value
  doc: ': Size of k-mers (value of k). [default=33]'
  type: long
  inputBinding:
    prefix: -k
- id: in_number_shared_kmers
  doc: ': Number of shared k-mers. [default=2]'
  type: long
  inputBinding:
    prefix: -t
- id: in_full_comparison_searched
  doc: ': Full comparison of index set and the first searched set [default=false]'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_prints_version_number
  doc: ': Prints the version number'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_absolute_path_output
  doc: '</.../>: ABSOLUTE path to output folder'
  type: File
  outputBinding:
    glob: $(inputs.in_absolute_path_output)
cwlVersion: v1.1
baseCommand:
- index_and_search
