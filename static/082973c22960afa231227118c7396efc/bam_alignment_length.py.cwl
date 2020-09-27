class: CommandLineTool
id: bam_alignment_length.py.cwl
inputs:
- id: in_tab_separated_file
  doc: "Tab separated file to save alignment lengths\n(bam_alignment_length.tsv)."
  type: File
  inputBinding:
    prefix: -t
- id: in_minimum_alignment_quality
  doc: Minimum alignment quality (0).
  type: long
  inputBinding:
    prefix: -q
- id: in_sort_number_read
  doc: "Sort by number of read bases instead of number of aligned\nreference bases."
  type: boolean
  inputBinding:
    prefix: -x
- id: in_quiet_print_false
  doc: Be quiet and do not print progress bar (False).
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_bam
  doc: Input BAM file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam_alignment_length.py
