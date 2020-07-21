class: CommandLineTool
id: ../../../traitar_pfam.cwl
inputs:
- id: local
  doc: the Pfam HMMs are in the above directory with name 'Pfam-A.hmm'
  type: boolean
  inputBinding:
    prefix: --local
- id: download
  doc: download Pfam HMMs into the given download directory and untar and unzip it
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- traitar
- pfam
