class: CommandLineTool
id: create_coordinates.cwl
inputs:
- id: in_input_vcf
  doc: VCF input
  type: string?
  inputBinding:
    prefix: --input_vcf
- id: in_output
  doc: "output coordinates to write (default: stdout)\n"
  type: string?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- create_coordinates
