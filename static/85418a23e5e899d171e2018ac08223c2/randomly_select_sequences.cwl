class: CommandLineTool
id: randomly_select_sequences.py.cwl
inputs:
- id: filename
  doc: Input fasta/fastq filename
  type: File
  inputBinding:
    position: 0
- id: output_prefix
  doc: Output file prefix
  type: string
  inputBinding:
    position: 1
- id: sample_size
  doc: Subsample size
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- randomly_select_sequences.py
