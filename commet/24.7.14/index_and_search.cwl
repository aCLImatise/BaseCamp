class: CommandLineTool
id: ../../../index_and_search.cwl
inputs:
- id: file_index_mandatory
  doc: ': A file containing the list of files to index - MANDATORY'
  type: File
  inputBinding:
    prefix: -i
- id: file_containing_search
  doc: ': A file containing the list of files to search - MANDATORY Each line of the
    file corresponds to a set of files to search'
  type: File
  inputBinding:
    prefix: -s
- id: absolute_path_log
  doc: '</.../>: ABSOLUTE path to log folder'
  type: boolean
  inputBinding:
    prefix: -l
- id: absolute_path_output
  doc: '</.../>: ABSOLUTE path to output folder'
  type: boolean
  inputBinding:
    prefix: -o
- id: size_kmers_value
  doc: ': Size of k-mers (value of k). [default=33]'
  type: string
  inputBinding:
    prefix: -k
- id: number_shared_kmers
  doc: ': Number of shared k-mers. [default=2]'
  type: string
  inputBinding:
    prefix: -t
- id: full_comparison_index
  doc: ': Full comparison of index set and the first searched set [default=false]'
  type: boolean
  inputBinding:
    prefix: -f
- id: prints_version_number
  doc: ': Prints the version number'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- index_and_search
