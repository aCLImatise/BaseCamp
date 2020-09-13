class: CommandLineTool
id: ../../../fasta_to_mock_fastq.py.cwl
inputs:
- id: in_mock_quality_value
  doc: Mock quality value (40).
  type: long
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta_to_mock_fastq.py
