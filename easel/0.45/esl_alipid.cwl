class: CommandLineTool
id: esl_alipid.cwl
inputs:
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_format
  doc: ': specify the input MSA file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: out_format
  doc: ': write the output MSA in format <s>  [Clustal]'
  type: string
  inputBinding:
    prefix: --outformat
- id: noheader
  doc: ': no header'
  type: boolean
  inputBinding:
    prefix: --noheader
- id: dna
  doc: ': use DNA alphabet'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': use RNA alphabet'
  type: boolean
  inputBinding:
    prefix: --rna
- id: amino
  doc: ': use protein alphabet'
  type: boolean
  inputBinding:
    prefix: --amino
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-alipid
