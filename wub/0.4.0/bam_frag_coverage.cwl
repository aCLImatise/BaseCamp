class: CommandLineTool
id: ../../../bam_frag_coverage.py.cwl
inputs:
- id: reference_fasta
  doc: Reference fasta.
  type: string
  inputBinding:
    prefix: -f
- id: bam_region_none
  doc: BAM region (None).
  type: string
  inputBinding:
    prefix: -c
- id: length_intervals_
  doc: Length intervals ().
  type: long
  inputBinding:
    prefix: -i
- id: number_none_auto
  doc: Number of bins (None = auto).
  type: string
  inputBinding:
    prefix: -b
- id: plot_perreference_information
  doc: Plot per-reference information.
  type: boolean
  inputBinding:
    prefix: -x
- id: take_log_coverage
  doc: Do not take log of coverage.
  type: boolean
  inputBinding:
    prefix: -o
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
- id: tab_separated_file_perchromosome
  doc: Tab separated file with per-chromosome cov80 scores (None). Requires the -x
    option to be specified.
  type: string
  inputBinding:
    prefix: -l
- id: tab_separated_file_global
  doc: Tab separated file with global cov80 score (None).
  type: string
  inputBinding:
    prefix: -g
- id: report_pdf_bamfragcoveragepdf
  doc: Report PDF (bam_frag_coverage.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: save_pickled_results
  doc: Save pickled results in this file (None).
  type: string
  inputBinding:
    prefix: -p
- id: quiet_show_bars
  doc: Be quiet and do not show progress bars.
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
- bam_frag_coverage.py
