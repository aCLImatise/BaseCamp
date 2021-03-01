class: CommandLineTool
id: bam_accuracy.py.cwl
inputs:
- id: in_bam_region_none
  doc: BAM region (None).
  type: string?
  inputBinding:
    prefix: -c
- id: in_tab_separated_file_save_global_statistics
  doc: Tab separated file to save global statistics (None).
  type: File?
  inputBinding:
    prefix: -g
- id: in_tab_separated_file_save_perread_statistics
  doc: Tab separated file to save per-read statistics (None).
  type: File?
  inputBinding:
    prefix: -l
- id: in_dataset_tag_bam
  doc: Dataset tag (BAM basename).
  type: string?
  inputBinding:
    prefix: -t
- id: in_minimum_alignment_quality
  doc: Minimum alignment quality (0).
  type: long?
  inputBinding:
    prefix: -q
- id: in_include_hard_clipps
  doc: "Include hard and soft clipps in alignment length when\ncalculating accuracy\
    \ (False)."
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_report_pdf_bamaccuracypdf
  doc: Report PDF (bam_accuracy.pdf).
  type: string?
  inputBinding:
    prefix: -r
- id: in_save_pickled_results
  doc: Save pickled results in this file (None).
  type: File?
  inputBinding:
    prefix: -p
- id: in_be_quiet_print
  doc: Be quiet and do not print progress bar (False).
  type: boolean?
  inputBinding:
    prefix: -Q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bam_accuracy.py
