class: CommandLineTool
id: index_and_search.cwl
inputs:
- id: i
  doc: ': A file containing the list of files to index - MANDATORY'
  type: File
  inputBinding:
    prefix: -i
- id: s
  doc: ': A file containing the list of files to search - MANDATORY Each line of the
    file corresponds to a set of files to search'
  type: File
  inputBinding:
    prefix: -s
- id: l
  doc: '</.../>: ABSOLUTE path to log folder'
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: '</.../>: ABSOLUTE path to output folder'
  type: boolean
  inputBinding:
    prefix: -o
- id: k
  doc: ': Size of k-mers (value of k). [default=33]'
  type: string
  inputBinding:
    prefix: -k
- id: t
  doc: ': Number of shared k-mers. [default=2]'
  type: string
  inputBinding:
    prefix: -t
- id: f
  doc: ': Full comparison of index set and the first searched set [default=false]'
  type: boolean
  inputBinding:
    prefix: -f
- id: v
  doc: ': Prints the version number'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- index_and_search
