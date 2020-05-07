class: CommandLineTool
id: extract_seqs_by_sample_id.py.cwl
inputs:
- id: input_fast_a_fp
  doc: path to the input fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta_fp
- id: output_fast_a_fp
  doc: the output fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fasta_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_seqs_by_sample_id.py
