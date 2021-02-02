class: CommandLineTool
id: traitar_pfam.cwl
inputs:
- id: in_local
  doc: the Pfam HMMs are in the above directory with name 'Pfam-A.hmm'
  type: boolean
  inputBinding:
    prefix: --local
- id: in_download
  doc: "download Pfam HMMs into the given download directory and untar\nand unzip\
    \ it"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- traitar
- pfam
