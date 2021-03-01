class: CommandLineTool
id: PLEKModelling.py.cwl
inputs:
- id: in_is_rm_tempfile
  doc: mRNA transcripts used to build predictor, in fasta format.
  type: string?
  inputBinding:
    prefix: -isrmtempfile
- id: in_l_ncrna
  doc: lncRNA transcripts used to build predictor, in fasta format.
  type: boolean?
  inputBinding:
    prefix: -lncRNA
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- PLEKModelling.py
