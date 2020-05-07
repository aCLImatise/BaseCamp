class: CommandLineTool
id: bam_frag_coverage.py.cwl
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
- id: c
  doc: BAM region (None).
  type: string
  inputBinding:
    prefix: -c
- id: i
  doc: Length intervals ().
  type: long
  inputBinding:
    prefix: -i
- id: b
  doc: Number of bins (None = auto).
  type: string
  inputBinding:
    prefix: -b
- id: x
  doc: Plot per-reference information.
  type: boolean
  inputBinding:
    prefix: -x
- id: o
  doc: Do not take log of coverage.
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: Dataset tag (BAM basename).
  type: string
  inputBinding:
    prefix: -t
- id: q
  doc: Minimum alignment quality (0).
  type: string
  inputBinding:
    prefix: -q
- id: l
  doc: Tab separated file with per-chromosome cov80 scores (None). Requires the -x
    option to be specified.
  type: string
  inputBinding:
    prefix: -l
- id: g
  doc: Tab separated file with global cov80 score (None).
  type: string
  inputBinding:
    prefix: -g
- id: r
  doc: Report PDF (bam_frag_coverage.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: p
  doc: Save pickled results in this file (None).
  type: string
  inputBinding:
    prefix: -p
- id: q
  doc: Be quiet and do not show progress bars.
  type: boolean
  inputBinding:
    prefix: -Q
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_frag_coverage.py
