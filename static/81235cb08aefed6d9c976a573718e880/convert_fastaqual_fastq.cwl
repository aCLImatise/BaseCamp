class: CommandLineTool
id: convert_fastaqual_fastq.py.cwl
inputs:
- id: fast_a_file_path
  doc: Input FASTA or FASTQ file. [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta_file_path
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_fastaqual_fastq.py
