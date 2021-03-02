class: CommandLineTool
id: bgt_atomize.cwl
inputs:
- id: in_bcf_output
  doc: BCF output
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_vcf_input
  doc: VCF input
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_list_contig_names
  doc: list of contig names and lengths (force -S)
  type: File?
  inputBinding:
    prefix: -t
- id: in_use_m_multiallelic
  doc: use <M> at a multi-allelic site (override -0)
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_use_multiallelic_genotype
  doc: use 0 at a multi-allelic genotype
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_in_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bgt
- atomize
