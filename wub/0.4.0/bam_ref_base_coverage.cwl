class: CommandLineTool
id: ../../../bam_ref_base_coverage.py.cwl
inputs:
- id: reference_fasta
  doc: Reference fasta.
  type: string
  inputBinding:
    prefix: -f
- id: bam_region_none
  doc: BAM region (None).
  type: string
  inputBinding:
    prefix: -c
- id: output_tab_separated
  doc: Output tab separated file (bam_ref_base_coverage.tsv).
  type: string
  inputBinding:
    prefix: -t
- id: minimum_base_coverage
  doc: Minimum base coverage for a position to be counted (1).
  type: long
  inputBinding:
    prefix: -m
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
- bam_ref_base_coverage.py
