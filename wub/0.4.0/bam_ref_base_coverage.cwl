class: CommandLineTool
id: bam_ref_base_coverage.py.cwl
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
- id: t
  doc: Output tab separated file (bam_ref_base_coverage.tsv).
  type: string
  inputBinding:
    prefix: -t
- id: m
  doc: Minimum base coverage for a position to be counted (1).
  type: long
  inputBinding:
    prefix: -m
- id: q
  doc: Be quiet and do not show progress bars.
  type: boolean
  inputBinding:
    prefix: -Q
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_ref_base_coverage.py
