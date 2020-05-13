class: CommandLineTool
id: gretel_snpper.cwl
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
- id: s
  doc: start (default = 1)
  type: string
  inputBinding:
    prefix: -s
- id: e
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
outputs: []
cwlVersion: v1.1
baseCommand:
- gretel-snpper
