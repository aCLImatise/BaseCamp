class: CommandLineTool
id: ../../../calculate_coverage.py.cwl
inputs:
- id: in_input_format_fastq
  doc: Input format (fastq).
  type: string
  inputBinding:
    prefix: -f
- id: in_genome_size_none
  doc: Genome size (None).
  type: long
  inputBinding:
    prefix: -s
- id: in_save_pickled_results
  doc: Save pickled results in this file.
  type: File
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- calculate_coverage.py
