class: CommandLineTool
id: ../../../fasta_to_mock_fastq.py_output_fastq.cwl
inputs:
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: fast_a_to_mock_fast_q_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_to_mock_fastq.py
- output_fastq
