class: CommandLineTool
id: fastq2bam.cwl
inputs:
- id: c
  doc: ': cell barcode offset'
  type: long
  inputBinding:
    prefix: -c
- id: c
  doc: ': cell barcode size'
  type: long
  inputBinding:
    prefix: -C
- id: u
  doc: ': UMI barcode offset'
  type: long
  inputBinding:
    prefix: -u
- id: u
  doc: ': UMI barcode size'
  type: long
  inputBinding:
    prefix: -U
- id: z
  doc: ': sample barcode offset'
  type: long
  inputBinding:
    prefix: -z
- id: z
  doc: ': sample barcode size'
  type: long
  inputBinding:
    prefix: -Z
- id: x
  doc: ': use 10x UMI tags instead of tags defined in the SAM specification'
  type: boolean
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq2bam
