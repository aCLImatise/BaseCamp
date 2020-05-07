class: CommandLineTool
id: make_fastq.py.cwl
inputs:
- id: input_fast_a_fp
  doc: path to the input fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta_fp
- id: qual
  doc: names of QUAL files, comma-delimited [REQUIRED]
  type: string
  inputBinding:
    prefix: --qual
outputs: []
cwlVersion: v1.1
baseCommand:
- make_fastq.py
