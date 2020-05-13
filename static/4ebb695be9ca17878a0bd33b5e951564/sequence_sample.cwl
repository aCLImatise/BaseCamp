class: CommandLineTool
id: sequence_sample.cwl
inputs:
- id: bases
  doc: output B bases.
  type: string
  inputBinding:
    prefix: -bases
- id: reads
  doc: output R reads.
  type: string
  inputBinding:
    prefix: -reads
- id: pairs
  doc: output P pairs (only if -paired).
  type: string
  inputBinding:
    prefix: -pairs
- id: fraction
  doc: output fraction F of the input bases.
  type: string
  inputBinding:
    prefix: -fraction
outputs: []
cwlVersion: v1.1
baseCommand:
- sequence
- sample
