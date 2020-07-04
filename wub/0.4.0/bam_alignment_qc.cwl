class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam_alignment_qc.py.cwl
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
- id: left_right_sizes
  doc: Left and right context sizes (1,1).
  type: string
  inputBinding:
    prefix: -n
- id: plot_perreference_information
  doc: Do not plot per-reference information.
  type: boolean
  inputBinding:
    prefix: -x
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
- id: number_quality_intervals
  doc: Number of quality intervals (6).
  type: string
  inputBinding:
    prefix: -i
- id: report_pdf_bamalignmentqcpdf
  doc: Report PDF (bam_alignment_qc.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: save_pickled_results
  doc: Save pickled results in this file (bam_alignment_qc.pk).
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
- bam_alignment_qc.py
