class: CommandLineTool
id: fastq_trim_poly_at.cwl
inputs:
- id: file
  doc: ':fastq (optional gzipped) file name '
  type: File
  inputBinding:
    prefix: --file
- id: ofile
  doc: ': fastq file name where the processed reads will be written '
  type: File
  inputBinding:
    prefix: --ofile
- id: min_poly_at_len
  doc: ': minimum length of poly-A|T sequence to remove.'
  type: long
  inputBinding:
    prefix: --min_poly_at_len
- id: min_len
  doc: ': minimum read length.'
  type: long
  inputBinding:
    prefix: --min_len
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_trim_poly_at
