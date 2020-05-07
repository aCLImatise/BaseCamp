class: CommandLineTool
id: malva_geno.cwl
inputs:
- id: reference_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: variants_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: kmc_output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: c
  doc: ''
  type: long
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- malva-geno
