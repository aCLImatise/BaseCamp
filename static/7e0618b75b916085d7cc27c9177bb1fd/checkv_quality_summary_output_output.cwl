class: CommandLineTool
id: checkv_quality_summary_output_output.cwl
inputs:
- id: input
  doc: Input viral sequences in FASTA format
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output directory
  type: string
  inputBinding:
    position: 1
- id: quiet
  doc: 'Suppress logging messages (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- checkv
- quality_summary
- output
- output
