class: CommandLineTool
id: fastq_trim_poly_at.cwl
inputs:
- id: in_file
  doc: :fastq (optional gzipped) file name
  type: File?
  inputBinding:
    prefix: --file
- id: in_ofile
  doc: ': fastq file name where the processed reads will be written'
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_min_poly_at_len
  doc: ': minimum length of poly-A|T sequence to remove.'
  type: long?
  inputBinding:
    prefix: --min_poly_at_len
- id: in_min_len
  doc: ': minimum read length.'
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_outfile
  doc: ''
  type: string?
  inputBinding:
    prefix: --outfile
- id: in_optional
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_parameters
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastq_trim_poly_at
