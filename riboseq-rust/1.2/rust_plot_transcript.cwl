class: CommandLineTool
id: rust_plot_transcript.bak.cwl
inputs:
- id: rust_codon_file
  doc: path to file produced from "rust_codon"
  type: string
  inputBinding:
    position: 0
- id: o
  doc: directory  path to outputfile, default is "plot_transcript"
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- rust_plot_transcript.bak
