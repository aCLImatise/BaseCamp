class: CommandLineTool
id: ../../../bam_gc_vs_qual.py.cwl
inputs:
- id: reference_fasta
  doc: Reference fasta.
  type: string
  inputBinding:
    prefix: -f
- id: minimum_alignment_quality
  doc: Minimum alignment quality (0).
  type: string
  inputBinding:
    prefix: -q
- id: report_pdf_bamgcvsqualpdf
  doc: Report PDF (bam_gc_vs_qual.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: tab_separated_file
  doc: Tab separated file to save results (bam_gc_vs_qual.tsv).
  type: string
  inputBinding:
    prefix: -t
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
- bam_gc_vs_qual.py
