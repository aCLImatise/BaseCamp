class: CommandLineTool
id: smof_head.cwl
inputs:
- id: k
  doc: -K print first K entries
  type: string
  inputBinding:
    position: 0
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 1
- id: entries
  doc: print first K entries; or use -n -K to print all but the last K entries
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
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- head
