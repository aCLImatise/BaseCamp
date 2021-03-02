class: CommandLineTool
id: cactus_fasta_fragments.py.cwl
inputs:
- id: in_fragment
  doc: "length of each fragment\n(default is 100)"
  type: long?
  inputBinding:
    prefix: --fragment
- id: in_step
  doc: "distance between the start of each fragment\n(default is 50)"
  type: long?
  inputBinding:
    prefix: --step
- id: in_shuffle
  doc: "[=<seed>]   randomly shuffle the order that fragments are output;\nthis can\
    \ be very memory intensive, as all fragments\nare collected in a list before any\
    \ are output\n(by default, fragments are output in sequence order)"
  type: boolean?
  inputBinding:
    prefix: --shuffle
- id: in_head
  doc: limit the number of fragments emitted
  type: long?
  inputBinding:
    prefix: --head
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cactus_fasta_fragments.py
