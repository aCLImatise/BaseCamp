class: CommandLineTool
id: bam_fill_unaligned.py_input_file.cwl
inputs:
- id: input_file
  doc: Input file.
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: Output SAM file.
  type: string
  inputBinding:
    position: 1
- id: f
  doc: Input/output format (SAM).
  type: string
  inputBinding:
    prefix: -f
- id: q
  doc: Input fastq.
  type: string
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_fill_unaligned.py
- input_file
