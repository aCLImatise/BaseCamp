class: CommandLineTool
id: compare_reads.cwl
inputs:
- id: i
  doc: ': A file containing the list of files to index (comma separated) - MANDATORY
    Each line of the file corresponds to a set of files (comma separated)'
  type: File
  inputBinding:
    prefix: -i
- id: s
  doc: ': A file containing the list of file sets to search - MANDATORY Each line
    of the file corresponds to a set of files (comma separated)'
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
  doc: ': Size of k-mers (value of k). [default=32]'
  type: string
  inputBinding:
    prefix: -k
- id: t
  doc: ': Number of shared k-mers. [default=2]'
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: ': Prints the version number and exit'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_reads
