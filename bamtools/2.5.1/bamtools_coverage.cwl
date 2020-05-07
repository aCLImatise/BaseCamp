class: CommandLineTool
id: bamtools_coverage.cwl
inputs:
- id: in
  doc: the input BAM file [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: out
  doc: the output file [stdout]
  type: File
  inputBinding:
    prefix: -out
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools
- coverage
