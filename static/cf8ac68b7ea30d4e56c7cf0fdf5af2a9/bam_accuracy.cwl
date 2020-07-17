class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam_accuracy.py.cwl
inputs:
- id: bam_region_none
  doc: BAM region (None).
  type: string
  inputBinding:
    prefix: -c
- id: tab_separated_file_save_statistics
  doc: Tab separated file to save global statistics (None).
  type: string
  inputBinding:
    prefix: -g
- id: tab_separated_file_save_none
  doc: Tab separated file to save per-read statistics (None).
  type: string
  inputBinding:
    prefix: -l
- id: dataset_tag_bam
  doc: Dataset tag (BAM basename).
  type: string
  inputBinding:
    prefix: -t
- id: minimum_alignment_quality
  doc: Minimum alignment quality (0).
  type: string
  inputBinding:
    prefix: -q
- id: include_hard_clipps
  doc: Include hard and soft clipps in alignment length when calculating accuracy
    (False).
  type: boolean
  inputBinding:
    prefix: -e
- id: report_pdf_bamaccuracypdf
  doc: Report PDF (bam_accuracy.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: save_pickled_results
  doc: Save pickled results in this file (None).
  type: string
  inputBinding:
    prefix: -p
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
- bam_accuracy.py
