class: CommandLineTool
id: coverage_from_fastx.cwl
inputs:
- id: in_coverage
  doc: "Calculate fraction of reads required for this coverage.\n(default: None)"
  type: string
  inputBinding:
    prefix: --coverage
- id: in_longest
  doc: "Use the longest reads when calculating fraction reads\nrequired for a given\
    \ coverage. (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --longest
- id: in_base_calls
  doc: input fastx file.
  type: string
  inputBinding:
    position: 0
- id: in_ref_len
  doc: "reference length (e.g. 4.8kb/mb/gb) or reference fastx\nfrom which to calculate\
    \ length."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- coverage_from_fastx
