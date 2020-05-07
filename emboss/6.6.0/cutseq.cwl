class: CommandLineTool
id: cutseq.cwl
inputs:
- id: from
  doc: integer    [Start of sequence (0)] This is the start position (inclusive) of
    the section of the sequence that you wish to remove. (Any integer value)
  type: boolean
  inputBinding:
    prefix: -from
- id: to
  doc: integer    [End of sequence (0)] This is the end position (inclusive) of the
    section of the sequence that you wish to remove. (Any integer value)
  type: boolean
  inputBinding:
    prefix: -to
outputs: []
cwlVersion: v1.1
baseCommand:
- cutseq
