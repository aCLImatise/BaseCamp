class: CommandLineTool
id: bam_alignments_compare.py.cwl
inputs:
- id: bam_one
  doc: First input BAM file.
  type: string
  inputBinding:
    position: 0
- id: bam_two
  doc: Second input BAM file.
  type: string
  inputBinding:
    position: 1
- id: w
  doc: Tolerance when performing coarse comparison of alignments (50).
  type: string
  inputBinding:
    prefix: -w
- id: g
  doc: Do strict comparison of alignment flags.
  type: boolean
  inputBinding:
    prefix: -g
- id: r
  doc: Report PDF (bam_alignments_compare.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: p
  doc: Save pickled results in this file (bam_alignments_compare.pk).
  type: string
  inputBinding:
    prefix: -p
- id: t
  doc: Save results in tsv format in this file (None).
  type: string
  inputBinding:
    prefix: -t
- id: f
  doc: Input format (BAM).
  type: string
  inputBinding:
    prefix: -f
- id: q
  doc: Be quiet and do not print progress bar (False).
  type: boolean
  inputBinding:
    prefix: -Q
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_alignments_compare.py
