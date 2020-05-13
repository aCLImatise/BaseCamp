class: CommandLineTool
id: metaWRAP_classify_bins.cwl
inputs:
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
- metaWRAP
- classify_bins
