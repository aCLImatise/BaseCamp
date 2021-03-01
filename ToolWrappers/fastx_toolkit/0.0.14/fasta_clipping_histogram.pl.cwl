class: CommandLineTool
id: fasta_clipping_histogram.pl.cwl
inputs:
- id: in_input_file_dot_fa
  doc: = input file (in FASTA format, can be GZIPped)
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
- fasta_clipping_histogram.pl
