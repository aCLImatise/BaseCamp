class: CommandLineTool
id: checkv_quality_summary.cwl
inputs:
- id: in_quiet
  doc: Suppress logging messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_input
  doc: Input viral sequences in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output directory
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- checkv
- quality_summary
