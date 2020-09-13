class: CommandLineTool
id: ../../../PLEKModelling.py.cwl
inputs:
- id: in_is_rm_tempfile
  doc: ''
  type: string
  inputBinding:
    prefix: -isrmtempfile
- id: in_is_balanced
  doc: mRNA transcripts used to build predictor, in fasta format.
  type: string
  inputBinding:
    prefix: -isbalanced
- id: in_l_ncrna
  doc: lncRNA transcripts used to build predictor, in fasta format.
  type: boolean
  inputBinding:
    prefix: -lncRNA
- id: in_plek_how_to_generate_scripts_dot_pdf
  doc: =====================
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PLEKModelling.py
