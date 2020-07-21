class: CommandLineTool
id: ../../../rust_plot_transcript.bak_RUST_codon_file.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: rust_plot_transcript_dot_bak
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: directory
  doc: ''
  type: Directory
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rust_plot_transcript.bak
- RUST-codon-file
