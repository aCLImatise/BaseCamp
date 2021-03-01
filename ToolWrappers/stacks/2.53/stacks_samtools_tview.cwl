class: CommandLineTool
id: stacks_samtools_tview.cwl
inputs:
- id: in_write_alignments
  doc: (This is a convenience wrapper around samtools-tview.)
  type: string?
  inputBinding:
    prefix: --write-alignments
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -P
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stacks-samtools-tview
