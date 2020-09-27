class: CommandLineTool
id: stats_from_bam.cwl
inputs:
- id: in_bed
  doc: '.bed file of reference regions to include. (default:'
  type: File
  inputBinding:
    prefix: --bed
- id: in_all_alignments
  doc: Include secondary and supplementary alignments.
  type: boolean
  inputBinding:
    prefix: --all_alignments
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stats_from_bam
