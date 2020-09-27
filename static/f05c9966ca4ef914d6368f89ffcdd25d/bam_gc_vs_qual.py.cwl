class: CommandLineTool
id: bam_gc_vs_qual.py.cwl
inputs:
- id: in_reference_fasta
  doc: Reference fasta.
  type: string
  inputBinding:
    prefix: -f
- id: in_minimum_alignment_quality
  doc: Minimum alignment quality (0).
  type: long
  inputBinding:
    prefix: -q
- id: in_report_pdf_bamgcvsqualpdf
  doc: Report PDF (bam_gc_vs_qual.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: in_tab_separated_file
  doc: Tab separated file to save results (bam_gc_vs_qual.tsv).
  type: File
  inputBinding:
    prefix: -t
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
- bam_gc_vs_qual.py
