class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastq2bam.cwl
inputs:
- id: cell_barcode_offset
  doc: ': cell barcode offset'
  type: long
  inputBinding:
    prefix: -c
- id: cell_barcode_size
  doc: ': cell barcode size'
  type: long
  inputBinding:
    prefix: -C
- id: umi_barcode_offset
  doc: ': UMI barcode offset'
  type: long
  inputBinding:
    prefix: -u
- id: umi_barcode_size
  doc: ': UMI barcode size'
  type: long
  inputBinding:
    prefix: -U
- id: sample_barcode_offset
  doc: ': sample barcode offset'
  type: long
  inputBinding:
    prefix: -z
- id: sample_barcode_size
  doc: ': sample barcode size'
  type: long
  inputBinding:
    prefix: -Z
- id: use_x_tags
  doc: ': use 10x UMI tags instead of tags defined in the SAM specification'
  type: boolean
  inputBinding:
    prefix: -X
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: one
  doc: ''
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: ''
  type: string
  inputBinding:
    prefix: '-2'
- id: three
  doc: ''
  type: string
  inputBinding:
    prefix: '-3'
- id: four
  doc: ''
  type: string
  inputBinding:
    prefix: '-4'
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq2bam
