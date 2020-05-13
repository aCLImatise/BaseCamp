class: CommandLineTool
id: convert_reference.cwl
inputs:
- id: t
  doc: Name of target contig
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: Print more information
  type: boolean
  inputBinding:
    prefix: -v
- id: m
  doc: MSA input of all contigs aligned
  type: string
  inputBinding:
    prefix: -m
- id: i
  doc: Input SAM/BAM file
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output SAM/BAM file
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: Insert silent padding states 'P' in CIGAR
  type: boolean
  inputBinding:
    prefix: -p
- id: x
  doc: Use X/= instead of M for Match/Mismatch states
  type: boolean
  inputBinding:
    prefix: -X
- id: h
  doc: Hard-clip bases instead of the default soft-clipping
  type: boolean
  inputBinding:
    prefix: -H
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_reference
