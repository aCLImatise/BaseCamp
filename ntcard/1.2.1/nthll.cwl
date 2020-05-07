class: CommandLineTool
id: nthll.cwl
inputs:
- id: threads
  doc: use N parallel threads [1] (N>=2 should be used when input files are >=2)
  type: string
  inputBinding:
    prefix: --threads
- id: km_er
  doc: the length of kmer [64]
  type: string
  inputBinding:
    prefix: --kmer
outputs: []
cwlVersion: v1.1
baseCommand:
- nthll
