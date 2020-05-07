class: CommandLineTool
id: vcf_to_tab.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_tab
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: iupac
  doc: Use one-letter IUPAC codes
  type: boolean
  inputBinding:
    prefix: --iupac
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-to-tab
