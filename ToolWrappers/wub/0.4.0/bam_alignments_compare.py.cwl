class: CommandLineTool
id: bam_alignments_compare.py.cwl
inputs:
- id: in_tolerance_when_performing
  doc: "Tolerance when performing coarse comparison of\nalignments (50)."
  type: long?
  inputBinding:
    prefix: -w
- id: in_do_strict_comparison
  doc: Do strict comparison of alignment flags.
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_report_pdf_bamalignmentscomparepdf
  doc: Report PDF (bam_alignments_compare.pdf).
  type: string?
  inputBinding:
    prefix: -r
- id: in_save_pickled_results
  doc: "Save pickled results in this file\n(bam_alignments_compare.pk)."
  type: File?
  inputBinding:
    prefix: -p
- id: in_save_results_none
  doc: Save results in tsv format in this file (None).
  type: File?
  inputBinding:
    prefix: -t
- id: in_input_format_bam
  doc: Input format (BAM).
  type: string?
  inputBinding:
    prefix: -f
- id: in_be_quiet_print
  doc: Be quiet and do not print progress bar (False).
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_bam_one
  doc: First input BAM file.
  type: string
  inputBinding:
    position: 0
- id: in_bam_two
  doc: Second input BAM file.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bam_alignments_compare.py
