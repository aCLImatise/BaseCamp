class: CommandLineTool
id: dedup.cwl
inputs:
- id: input
  doc: the input file if this option is not specified, the input is expected to be
    piped in
  type: string
  inputBinding:
    prefix: --input
- id: merged
  doc: the input only contains merged reads. If this option is specified read names
    are not examined for prefixes. Both the start and end of the aligment are considered
    for all reads.
  type: boolean
  inputBinding:
    prefix: --merged
- id: output
  doc: the output folder. Has to be specified if input is set.
  type: string
  inputBinding:
    prefix: --output
- id: unsorted
  doc: Do not automatically sort the output
  type: boolean
  inputBinding:
    prefix: --unsorted
outputs: []
cwlVersion: v1.1
baseCommand:
- dedup
