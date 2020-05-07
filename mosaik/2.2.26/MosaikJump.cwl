class: CommandLineTool
id: MosaikJump.cwl
inputs:
- id: mem
  doc: 'the amount memory used when sorting hashes. def: 2'
  type: string
  inputBinding:
    prefix: -mem
- id: hs
  doc: the hash size [4 - 32]
  type: string
  inputBinding:
    prefix: -hs
- id: iupac
  doc: considers IUPAC
  type: boolean
  inputBinding:
    prefix: -iupac
outputs: []
cwlVersion: v1.1
baseCommand:
- MosaikJump
