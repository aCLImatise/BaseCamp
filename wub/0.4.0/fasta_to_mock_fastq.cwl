class: CommandLineTool
id: fasta_to_mock_fastq.py.cwl
inputs:
- id: input_fast_a
  doc: 'Input fasta (default: stdin).'
  type: string
  inputBinding:
    position: 0
- id: output_fast_q
  doc: 'Output fastq (default: stdout)'
  type: string
  inputBinding:
    position: 1
- id: q
  doc: Mock quality value (40).
  type: string
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_to_mock_fastq.py
