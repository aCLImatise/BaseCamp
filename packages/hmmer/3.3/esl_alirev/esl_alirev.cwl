class: CommandLineTool
id: ../../../esl_alirev.cwl
inputs:
- id: in_in_format
  doc: ': specify the input MSA file is in format <s>'
  type: File
  inputBinding:
    prefix: --informat
- id: in_out_format
  doc: ': write the output MSA in format <s>'
  type: string
  inputBinding:
    prefix: --outformat
- id: in_dna
  doc: ': use DNA alphabet'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': use RNA alphabet'
  type: boolean
  inputBinding:
    prefix: --rna
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- esl-alirev
