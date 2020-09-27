class: CommandLineTool
id: surpyvor_highsens.cwl
inputs:
- id: in_verbose
  doc: Print out more information while running.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_variants
  doc: vcf files to merge
  type: string[]
  inputBinding:
    prefix: --variants
- id: in_output
  doc: output file
  type: File
  inputBinding:
    prefix: --output
- id: in_distance
  doc: distance between variants to merge
  type: string
  inputBinding:
    prefix: --distance
- id: in_minlength
  doc: "Minimum length of variants to consider\n"
  type: long
  inputBinding:
    prefix: --minlength
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- surpyvor
- highsens
