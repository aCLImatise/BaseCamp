class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam_alignment_length.py.cwl
inputs:
- id: tab_separated_file
  doc: Tab separated file to save alignment lengths (bam_alignment_length.tsv).
  type: string
  inputBinding:
    prefix: -t
- id: minimum_alignment_quality
  doc: Minimum alignment quality (0).
  type: string
  inputBinding:
    prefix: -q
- id: sort_number_number
  doc: Sort by number of read bases instead of number of aligned reference bases.
  type: boolean
  inputBinding:
    prefix: -x
- id: quiet_print_bar
  doc: Be quiet and do not print progress bar (False).
  type: boolean
  inputBinding:
    prefix: -Q
- id: bam
  doc: Input BAM file.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_alignment_length.py
