class: CommandLineTool
id: metaWRAP_annotate_bins.cwl
inputs:
- id: o
  doc: output directory
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: number of threads (default=1)
  type: long
  inputBinding:
    prefix: -t
- id: b
  doc: folder with metagenomic bins in fasta format
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- metaWRAP
- annotate_bins
