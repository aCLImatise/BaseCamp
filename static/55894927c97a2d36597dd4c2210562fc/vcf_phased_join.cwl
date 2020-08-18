class: CommandLineTool
id: ../../../vcf_phased_join.cwl
inputs:
- id: min_join_quality
  doc: Quality threshold for gluing the pre-phased blocks together [10]
  type: string
  inputBinding:
    prefix: --min-join-quality
- id: list
  doc: List of VCFs to join.
  type: File
  inputBinding:
    prefix: --list
- id: output
  doc: Output file name. When "-" is supplied, STDOUT and STDERR will be used
  type: File
  inputBinding:
    prefix: --output
- id: min_pq
  doc: Break pre-phased segments if PQ value is lower in input VCFs [0.6]
  type: string
  inputBinding:
    prefix: --min-PQ
- id: a_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: b_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: cdot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-phased-join
