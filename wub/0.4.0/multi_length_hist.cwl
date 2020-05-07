class: CommandLineTool
id: multi_length_hist.py.cwl
inputs:
- id: input_counts
  doc: Input sequence files.
  type: string
  inputBinding:
    position: 0
- id: r
  doc: Report PDF.
  type: string
  inputBinding:
    prefix: -r
- id: f
  doc: Input format (fastq).
  type: string
  inputBinding:
    prefix: -f
- id: b
  doc: Number of bins (50).
  type: string
  inputBinding:
    prefix: -b
- id: l
  doc: Minimum read length (None).
  type: long
  inputBinding:
    prefix: -l
- id: u
  doc: Maximum read length (None).
  type: long
  inputBinding:
    prefix: -u
- id: l
  doc: Log transform lengths.
  type: boolean
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- multi_length_hist.py
