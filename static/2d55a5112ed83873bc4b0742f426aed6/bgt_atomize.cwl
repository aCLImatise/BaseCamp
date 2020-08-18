class: CommandLineTool
id: ../../../bgt_atomize.cwl
inputs:
- id: bcf_output
  doc: BCF output
  type: boolean
  inputBinding:
    prefix: -b
- id: vcf_input
  doc: VCF input
  type: boolean
  inputBinding:
    prefix: -S
- id: list_contig_names
  doc: list of contig names and lengths (force -S)
  type: File
  inputBinding:
    prefix: -t
- id: use_m_multiallelic
  doc: use <M> at a multi-allelic site (override -0)
  type: boolean
  inputBinding:
    prefix: -M
- id: use_multiallelic_genotype
  doc: use 0 at a multi-allelic genotype
  type: boolean
  inputBinding:
    prefix: '-0'
- id: in_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bgt
- atomize
