class: CommandLineTool
id: ../../../bam_fill_unaligned.py.cwl
inputs:
- id: in_inputoutput_format_sam
  doc: Input/output format (SAM).
  type: string
  inputBinding:
    prefix: -f
- id: in_input_fastq
  doc: Input fastq.
  type: string
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam_fill_unaligned.py
