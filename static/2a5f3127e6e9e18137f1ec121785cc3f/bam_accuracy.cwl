class: CommandLineTool
id: bam_accuracy.py.cwl
inputs:
- id: bam
  doc: Input BAM file.
  type: string
  inputBinding:
    position: 0
- id: c
  doc: BAM region (None).
  type: string
  inputBinding:
    prefix: -c
- id: g
  doc: Tab separated file to save global statistics (None).
  type: string
  inputBinding:
    prefix: -g
- id: l
  doc: Tab separated file to save per-read statistics (None).
  type: string
  inputBinding:
    prefix: -l
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
- id: e
  doc: Include hard and soft clipps in alignment length when calculating accuracy
    (False).
  type: boolean
  inputBinding:
    prefix: -e
- id: r
  doc: Report PDF (bam_accuracy.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: p
  doc: Save pickled results in this file (None).
  type: string
  inputBinding:
    prefix: -p
- id: q
  doc: Be quiet and do not print progress bar (False).
  type: boolean
  inputBinding:
    prefix: -Q
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_accuracy.py
