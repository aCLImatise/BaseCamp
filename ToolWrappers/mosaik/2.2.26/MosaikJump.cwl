class: CommandLineTool
id: MosaikJump.cwl
inputs:
- id: in_mem
  doc: "the amount memory used when sorting\nhashes. def: 2"
  type: long
  inputBinding:
    prefix: -mem
- id: in_hs
  doc: the hash size [4 - 32]
  type: long
  inputBinding:
    prefix: -hs
- id: in_iupac
  doc: considers IUPAC
  type: boolean
  inputBinding:
    prefix: -iupac
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MosaikJump
