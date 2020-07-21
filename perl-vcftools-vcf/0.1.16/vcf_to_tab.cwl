class: CommandLineTool
id: ../../../vcf_to_tab.cwl
inputs:
- id: iupac
  doc: Use one-letter IUPAC codes
  type: boolean
  inputBinding:
    prefix: --iupac
- id: in_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-to-tab
