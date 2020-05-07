class: CommandLineTool
id: sff2fastq.cwl
inputs:
- id: v
  doc: Program and version information
  type: boolean
  inputBinding:
    prefix: -v
- id: n
  doc: Output the untrimmed sequence and quality scores
  type: boolean
  inputBinding:
    prefix: -n
- id: o
  doc: Desired fastq output file. If not specified, defaults to stdout
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- sff2fastq
