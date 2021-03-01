class: CommandLineTool
id: bam_alignment_qc.py.cwl
inputs:
- id: in_reference_fasta
  doc: Reference fasta.
  type: string?
  inputBinding:
    prefix: -f
- id: in_bam_region_none
  doc: BAM region (None).
  type: string?
  inputBinding:
    prefix: -c
- id: in_left_right_sizes
  doc: Left and right context sizes (1,1).
  type: long?
  inputBinding:
    prefix: -n
- id: in_plot_perreference_information
  doc: Do not plot per-reference information.
  type: boolean?
  inputBinding:
    prefix: -x
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
- id: in_number_quality_intervals
  doc: Number of quality intervals (6).
  type: long?
  inputBinding:
    prefix: -i
- id: in_report_pdf_bamalignmentqcpdf
  doc: Report PDF (bam_alignment_qc.pdf).
  type: string?
  inputBinding:
    prefix: -r
- id: in_save_pickled_results
  doc: Save pickled results in this file (bam_alignment_qc.pk).
  type: File?
  inputBinding:
    prefix: -p
- id: in_be_quiet_show
  doc: Be quiet and do not show progress bars.
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
- bam_alignment_qc.py
