class: CommandLineTool
id: ../../../multi_length_hist.py.cwl
inputs:
- id: report_pdf
  doc: Report PDF.
  type: string
  inputBinding:
    prefix: -r
- id: input_format_fastq
  doc: Input format (fastq).
  type: string
  inputBinding:
    prefix: -f
- id: number_of_bins
  doc: Number of bins (50).
  type: string
  inputBinding:
    prefix: -b
- id: minimum_read_length
  doc: Minimum read length (None).
  type: long
  inputBinding:
    prefix: -l
- id: maximum_read_length
  doc: Maximum read length (None).
  type: long
  inputBinding:
    prefix: -u
- id: log_transform_lengths
  doc: Log transform lengths.
  type: boolean
  inputBinding:
    prefix: -L
- id: input_counts
  doc: Input sequence files.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- multi_length_hist.py
