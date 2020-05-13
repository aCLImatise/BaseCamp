class: CommandLineTool
id: subsample_fasta.py.cwl
inputs:
- id: input_fast_a_fp
  doc: path to the input fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta_fp
- id: percent_subsample
  doc: Specify the percentage (as a fraction between 0 and 1) of sequences to subsample
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --percent_subsample
outputs: []
cwlVersion: v1.1
baseCommand:
- subsample_fasta.py
