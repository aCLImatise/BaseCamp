class: CommandLineTool
id: esl_alipid.cwl
inputs:
- id: in_in_format
  doc: ': specify the input MSA file is in format <s>'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_out_format
  doc: ': write the output MSA in format <s>  [Clustal]'
  type: string?
  inputBinding:
    prefix: --outformat
- id: in_noheader
  doc: ': no header'
  type: boolean?
  inputBinding:
    prefix: --noheader
- id: in_dna
  doc: ': use DNA alphabet'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': use RNA alphabet'
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_amino
  doc: ': use protein alphabet'
  type: boolean?
  inputBinding:
    prefix: --amino
- id: in_msa_file
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
- esl-alipid
