class: CommandLineTool
id: extract_reads.cwl
inputs:
- id: o
  doc: ': Output results in the given file [default=stdout]'
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: ': prints the version number.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_reads
