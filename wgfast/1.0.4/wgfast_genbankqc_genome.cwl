class: CommandLineTool
id: ../../../wgfast_genbankqc_genome.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wgfast_genbankqc
- genome
