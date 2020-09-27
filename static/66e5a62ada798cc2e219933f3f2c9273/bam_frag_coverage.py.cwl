class: CommandLineTool
id: bam_frag_coverage.py.cwl
inputs:
- id: in_reference_fasta
  doc: Reference fasta.
  type: string
  inputBinding:
    prefix: -f
- id: in_bam_region_none
  doc: BAM region (None).
  type: string
  inputBinding:
    prefix: -c
- id: in_length_intervals_
  doc: Length intervals ().
  type: long
  inputBinding:
    prefix: -i
- id: in_number_bins_none
  doc: Number of bins (None = auto).
  type: long
  inputBinding:
    prefix: -b
- id: in_plot_perreference_information
  doc: Plot per-reference information.
  type: boolean
  inputBinding:
    prefix: -x
- id: in_take_log_coverage
  doc: Do not take log of coverage.
  type: boolean
  inputBinding:
    prefix: -o
- id: in_dataset_tag_bam
  doc: Dataset tag (BAM basename).
  type: string
  inputBinding:
    prefix: -t
- id: in_minimum_alignment_quality
  doc: Minimum alignment quality (0).
  type: long
  inputBinding:
    prefix: -q
- id: in_tab_separated_file_requires
  doc: "Tab separated file with per-chromosome cov80 scores\n(None). Requires the\
    \ -x option to be specified."
  type: long
  inputBinding:
    prefix: -l
- id: in_tab_separated_file_global
  doc: Tab separated file with global cov80 score (None).
  type: long
  inputBinding:
    prefix: -g
- id: in_report_pdf_bamfragcoveragepdf
  doc: Report PDF (bam_frag_coverage.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: in_save_pickled_results
  doc: Save pickled results in this file (None).
  type: File
  inputBinding:
    prefix: -p
- id: in_quiet_show_bars
  doc: Be quiet and do not show progress bars.
  type: boolean
  inputBinding:
    prefix: -Q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam_frag_coverage.py
