class: CommandLineTool
id: align_seqs.py.cwl
inputs:
- id: input_fast_a_fp
  doc: path to the input fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- align_seqs.py
