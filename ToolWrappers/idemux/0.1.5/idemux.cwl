class: CommandLineTool
id: idemux.cwl
inputs:
- id: in_i_five_rc
  doc: "when the i5 barcode has been sequenced as reverse\ncomplement. make sure to\
    \ enter non-reverse complement\nsequences in the barcode file"
  type: boolean?
  inputBinding:
    prefix: --i5-rc
- id: in_i_one_start
  doc: "start position of the i1 index (1-based) on read 2\n(default: 11)"
  type: long?
  inputBinding:
    prefix: --i1-start
- id: in_r_one
  doc: gzipped read 1 fastq file
  type: long?
  inputBinding:
    prefix: --r1
- id: in_r_two
  doc: path to gzipped read 2 fastq file
  type: long?
  inputBinding:
    prefix: --r2
- id: in_sample_sheet
  doc: "csv file describing sample names, and barcode\ncombinations"
  type: File?
  inputBinding:
    prefix: --sample-sheet
- id: in_out
  doc: where to write the output files
  type: string?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/idemux:0.1.5--py_0
cwlVersion: v1.1
baseCommand:
- idemux
