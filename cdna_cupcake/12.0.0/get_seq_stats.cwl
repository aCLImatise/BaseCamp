class: CommandLineTool
id: get_seq_stats.py.cwl
inputs:
- id: filename
  doc: Input fasta/fastq filename
  type: File
  inputBinding:
    position: 0
- id: bin_width
  doc: 'Bin width, in bp (default: 1000 bp)'
  type: string
  inputBinding:
    prefix: --binwidth
outputs: []
cwlVersion: v1.1
baseCommand:
- get_seq_stats.py
