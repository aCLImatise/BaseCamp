class: CommandLineTool
id: ../../../toGrimmFormat.cwl
inputs:
- id: in_genome_n_chr_lengths
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
- toGrimmFormat
