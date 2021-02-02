class: CommandLineTool
id: novoutil_index.cwl
inputs:
- id: in_genome_dot_nix
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- novoutil
- index
