class: CommandLineTool
id: smof_head.cwl
inputs:
- id: in_entries
  doc: "print first K entries; or use -n -K to print all but the\nlast K entries"
  type: string?
  inputBinding:
    prefix: --entries
- id: in_first
  doc: print first K letters of each sequence
  type: string?
  inputBinding:
    prefix: --first
- id: in_last
  doc: print last K letters of each sequence
  type: string?
  inputBinding:
    prefix: --last
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- smof
- head
