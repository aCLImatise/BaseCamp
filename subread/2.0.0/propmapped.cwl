class: CommandLineTool
id: propmapped.cwl
inputs:
- id: i
  doc: An input file containing read mapping results. Both SAM or BAM formats are
    supported.
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Name of output file including mapping statistics.
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: If specified, fragments (read pairs) will be counted instead of individual
    reads. This option is only applicable for paired-end reads.
  type: boolean
  inputBinding:
    prefix: -f
- id: p
  doc: If specified, only properly paired reads will be counted. This option is only
    applicable for paired-end reads.
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- propmapped
