class: CommandLineTool
id: metawrap_annotate_bins.cwl
inputs:
- id: meta_wrap
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: annotate_bins
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- metawrap
- annotate_bins
