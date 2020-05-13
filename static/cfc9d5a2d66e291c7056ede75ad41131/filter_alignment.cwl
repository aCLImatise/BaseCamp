class: CommandLineTool
id: filter_alignment.py.cwl
inputs:
- id: input_fast_a_file
  doc: the input fasta file containing the alignment [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta_file
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_alignment.py
