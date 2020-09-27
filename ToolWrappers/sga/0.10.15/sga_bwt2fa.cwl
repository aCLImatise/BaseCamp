class: CommandLineTool
id: sga_bwt2fa.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_outfile
  doc: write the sequences to FILE
  type: File
  inputBinding:
    prefix: --outfile
- id: in_prefix
  doc: prefix the names of the reads with STR
  type: string
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sga
- bwt2fa
