class: CommandLineTool
id: coverage_stats.cwl
inputs:
- id: t
  doc: Name of target contig, e.g. HXB2:2253-2256
  type: string
  inputBinding:
    prefix: -t
- id: i
  doc: Input SAM/BAM file
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output TSV file
  type: string
  inputBinding:
    prefix: -o
- id: m
  doc: MSA of contigs
  type: string
  inputBinding:
    prefix: -m
- id: select
  doc: Name of contig that is of interest
  type: string
  inputBinding:
    prefix: --select
outputs: []
cwlVersion: v1.1
baseCommand:
- coverage_stats
