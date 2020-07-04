class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastq_pre_barcodes.cwl
inputs:
- id: one_zero_x
  doc: ': use 10X UMI tags (UB and UY) instead of the default tags defined in the
    SAM specification'
  type: boolean
  inputBinding:
    prefix: --10x
- id: read_one
  doc: ''
  type: string
  inputBinding:
    prefix: --read1
- id: outfile_one
  doc: ''
  type: string
  inputBinding:
    prefix: --outfile1
- id: optional
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: parameters
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_pre_barcodes
