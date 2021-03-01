class: CommandLineTool
id: smof_filter.cwl
inputs:
- id: in_shorter_than
  doc: keep only if length is less than or equal to LEN
  type: long?
  inputBinding:
    prefix: --shorter-than
- id: in_longer_than
  doc: keep only if length is greater than or equal to LEN
  type: long?
  inputBinding:
    prefix: --longer-than
- id: in_composition
  doc: "keep only if composition meets the condition (e.g. 'GC\n> .5')\n"
  type: double?
  inputBinding:
    prefix: --composition
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
- filter
