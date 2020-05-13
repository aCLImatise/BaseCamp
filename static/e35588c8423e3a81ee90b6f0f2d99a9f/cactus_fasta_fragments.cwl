class: CommandLineTool
id: cactus_fasta_fragments.py.cwl
inputs:
- id: fragment
  doc: length of each fragment (default is 100)
  type: long
  inputBinding:
    prefix: --fragment
- id: step
  doc: distance between the start of each fragment (default is 50)
  type: long
  inputBinding:
    prefix: --step
- id: shuffle
  doc: '[=<seed>]   randomly shuffle the order that fragments are output; this can
    be very memory intensive, as all fragments are collected in a list before any
    are output (by default, fragments are output in sequence order)'
  type: boolean
  inputBinding:
    prefix: --shuffle
- id: origin
  doc: output positions are origin-one (surprisingly, this is the default)
  type: string
  inputBinding:
    prefix: --origin
- id: origin
  doc: output positions are origin-zero
  type: string
  inputBinding:
    prefix: --origin
- id: head
  doc: limit the number of fragments emitted
  type: string
  inputBinding:
    prefix: --head
outputs: []
cwlVersion: v1.1
baseCommand:
- cactus_fasta_fragments.py
