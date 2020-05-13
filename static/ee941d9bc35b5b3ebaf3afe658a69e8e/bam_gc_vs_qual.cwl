class: CommandLineTool
id: bam_gc_vs_qual.py.cwl
inputs:
- id: bam
  doc: Input BAM file.
  type: string
  inputBinding:
    position: 0
- id: f
  doc: Reference fasta.
  type: string
  inputBinding:
    prefix: -f
- id: q
  doc: Minimum alignment quality (0).
  type: string
  inputBinding:
    prefix: -q
- id: r
  doc: Report PDF (bam_gc_vs_qual.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: t
  doc: Tab separated file to save results (bam_gc_vs_qual.tsv).
  type: string
  inputBinding:
    prefix: -t
- id: q
  doc: Be quiet and do not show progress bars.
  type: boolean
  inputBinding:
    prefix: -Q
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_gc_vs_qual.py
