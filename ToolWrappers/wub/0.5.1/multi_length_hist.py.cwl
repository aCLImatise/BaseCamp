class: CommandLineTool
id: multi_length_hist.py.cwl
inputs:
- id: in_report_pdf
  doc: Report PDF.
  type: string?
  inputBinding:
    prefix: -r
- id: in_input_format_fastq
  doc: Input format (fastq).
  type: string?
  inputBinding:
    prefix: -f
- id: in_number_of_bins
  doc: Number of bins (50).
  type: long?
  inputBinding:
    prefix: -b
- id: in_minimum_read_length
  doc: Minimum read length (None).
  type: long?
  inputBinding:
    prefix: -l
- id: in_maximum_read_length
  doc: Maximum read length (None).
  type: long?
  inputBinding:
    prefix: -u
- id: in_log_transform_lengths
  doc: Log transform lengths.
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_input_counts
  doc: Input sequence files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- multi_length_hist.py
