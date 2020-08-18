class: CommandLineTool
id: ../../../svtools_copynumber.cwl
inputs:
- id: cnv_nator
  doc: '[-i <VCF>] [-o <PATH>] [-t <DIR>]'
  type: File
  inputBinding:
    prefix: --cnvnator
- id: coordinates
  doc: file containing coordinate for which to retrieve copynumber (required)
  type: File
  inputBinding:
    prefix: --coordinates
- id: root
  doc: CNVnator .root histogram file (required)
  type: File
  inputBinding:
    prefix: --root
- id: window
  doc: CNVnator window size (required)
  type: long
  inputBinding:
    prefix: --window
- id: sample
  doc: sample to annotate (required)
  type: string
  inputBinding:
    prefix: --sample
- id: input
  doc: VCF input
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'output VCF to write (default: stdout)'
  type: File
  inputBinding:
    prefix: --output
- id: tempdir
  doc: Directory for temp file downloads
  type: string
  inputBinding:
    prefix: --tempdir
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- copynumber
