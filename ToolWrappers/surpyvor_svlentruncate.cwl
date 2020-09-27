class: CommandLineTool
id: surpyvor_svlentruncate.cwl
inputs:
- id: in_verbose
  doc: Print out more information while running.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_length
  doc: maximal SVLEN, replace SVLEN by this value if larger
  type: long
  inputBinding:
    prefix: --length
- id: in_output
  doc: "vcf file to write to\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_vcf
  doc: vcf file to parse
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- surpyvor
- svlentruncate
