class: CommandLineTool
id: CRISPResso.cwl
inputs:
- id: in_analysis
  doc: "CRISPR/Cas9 outcomes from deep sequencing data-\n)"
  type: long
  inputBinding:
    prefix: -Analysis
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_r_two
  doc: ''
  type: long
  inputBinding:
    prefix: -r2
- id: in_r_one
  doc: ''
  type: long
  inputBinding:
    prefix: -r1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CRISPResso
