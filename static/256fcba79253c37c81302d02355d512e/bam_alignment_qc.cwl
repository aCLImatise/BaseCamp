class: CommandLineTool
id: bam_alignment_qc.py.cwl
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
- id: n
  doc: Left and right context sizes (1,1).
  type: string
  inputBinding:
    prefix: -n
- id: x
  doc: Do not plot per-reference information.
  type: boolean
  inputBinding:
    prefix: -x
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
- id: i
  doc: Number of quality intervals (6).
  type: string
  inputBinding:
    prefix: -i
- id: r
  doc: Report PDF (bam_alignment_qc.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: p
  doc: Save pickled results in this file (bam_alignment_qc.pk).
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
- bam_alignment_qc.py
