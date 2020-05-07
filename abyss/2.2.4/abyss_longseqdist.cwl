class: CommandLineTool
id: abyss_longseqdist.cwl
inputs:
- id: sam
  doc: BWA-MEM alignments of long sequences to the assembly
  type: string
  inputBinding:
    position: 0
- id: dist
  doc: estimates of the distance between contigs
  type: string
  inputBinding:
    position: 1
- id: km_er
  doc: length of a k-mer
  type: string
  inputBinding:
    prefix: --kmer
- id: min_gap
  doc: minimum scaffold gap length to output [200]
  type: string
  inputBinding:
    prefix: --min-gap
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-longseqdist
