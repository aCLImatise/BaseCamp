class: CommandLineTool
id: fasta_to_mock_fastq.py_output_fastq.cwl
inputs:
- id: in_q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: in_fast_a_to_mock_fast_q_do_tpy
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
- fasta_to_mock_fastq.py
- output_fastq
