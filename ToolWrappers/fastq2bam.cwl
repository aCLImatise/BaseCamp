class: CommandLineTool
id: fastq2bam.cwl
inputs:
- id: in_cell_barcode_offset
  doc: ': cell barcode offset'
  type: long
  inputBinding:
    prefix: -c
- id: in_cell_barcode_size
  doc: ': cell barcode size'
  type: long
  inputBinding:
    prefix: -C
- id: in_umi_barcode_offset
  doc: ': UMI barcode offset'
  type: long
  inputBinding:
    prefix: -u
- id: in_umi_barcode_size
  doc: ': UMI barcode size'
  type: long
  inputBinding:
    prefix: -U
- id: in_sample_barcode_offset
  doc: ': sample barcode offset'
  type: long
  inputBinding:
    prefix: -z
- id: in_sample_barcode_size
  doc: ': sample barcode size'
  type: long
  inputBinding:
    prefix: -Z
- id: in_use_umi_tags
  doc: ': use 10x UMI tags instead of tags defined in the SAM specification'
  type: boolean
  inputBinding:
    prefix: -X
- id: in_four
  doc: ''
  type: long
  inputBinding:
    prefix: '-4'
- id: in_three
  doc: ''
  type: long
  inputBinding:
    prefix: '-3'
- id: in_two
  doc: ''
  type: long
  inputBinding:
    prefix: '-2'
- id: in_one
  doc: ''
  type: long
  inputBinding:
    prefix: '-1'
- id: in_b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq2bam
