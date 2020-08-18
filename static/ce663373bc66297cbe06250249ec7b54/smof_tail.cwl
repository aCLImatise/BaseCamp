class: CommandLineTool
id: ../../../smof_tail.cwl
inputs:
- id: entries
  doc: print last K entries; or use -n +K to output starting with the Kth
  type: string
  inputBinding:
    prefix: --entries
- id: first
  doc: print first K letters of each sequence
  type: string
  inputBinding:
    prefix: --first
- id: last
  doc: print last K letters of each sequence
  type: string
  inputBinding:
    prefix: --last
- id: k_print_entries
  doc: -K print last K entries
  type: string
  inputBinding:
    position: 0
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- tail
