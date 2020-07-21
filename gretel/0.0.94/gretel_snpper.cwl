class: CommandLineTool
id: ../../../gretel_snpper.cwl
inputs:
- id: bam
  doc: bam of reads aligned to (psuedo)-reference
  type: string
  inputBinding:
    prefix: --bam
- id: contig
  doc: name of contig to generate a VCF for
  type: string
  inputBinding:
    prefix: --contig
- id: start_default_
  doc: start (default = 1)
  type: string
  inputBinding:
    prefix: -s
- id: end_default_length
  doc: end (default = length of the reference)
  type: string
  inputBinding:
    prefix: -e
- id: depth
  doc: number of reads that must feature a read to call that base as a possible variant
    (default = 0)
  type: string
  inputBinding:
    prefix: --depth
- id: aggressively
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: call
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: variants
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: generate
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- gretel-snpper
