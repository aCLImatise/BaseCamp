class: CommandLineTool
id: metawrap_classify_bins.cwl
inputs:
- id: meta_wrap
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: classify_bins
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: b
  doc: folder with the bins to be classified (in fasta format)
  type: string
  inputBinding:
    prefix: -b
- id: o
  doc: output directory
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: number of threads
  type: long
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- metawrap
- classify_bins
