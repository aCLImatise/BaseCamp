class: CommandLineTool
id: blast_wrapper.py.cwl
inputs:
- id: input_fast_a_fp
  doc: path to the input fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta_fp
- id: refseq_s_fp
  doc: path to blast database as a fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --refseqs_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- blast_wrapper.py
