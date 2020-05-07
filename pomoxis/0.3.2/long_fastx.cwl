class: CommandLineTool
id: long_fastx.cwl
inputs:
- id: input
  doc: Input .fastq file.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output .fastq file.
  type: string
  inputBinding:
    position: 1
- id: longest
  doc: Percentage of longest reads to partition.
  type: string
  inputBinding:
    prefix: --longest
- id: bases
  doc: Maximum number of bases (subject to at least one read.)
  type: string
  inputBinding:
    prefix: --bases
- id: others
  doc: Write all other reads to file.
  type: string
  inputBinding:
    prefix: --others
outputs: []
cwlVersion: v1.1
baseCommand:
- long_fastx
