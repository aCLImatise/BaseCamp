class: CommandLineTool
id: esl_alirev.cwl
inputs:
- id: in_format
  doc: ': specify the input MSA file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: out_format
  doc: ': write the output MSA in format <s>'
  type: string
  inputBinding:
    prefix: --outformat
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
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-alirev
