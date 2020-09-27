class: CommandLineTool
id: hallascatter.cwl
inputs:
- id: in_input
  doc: HAllA output directory
  type: Directory
  inputBinding:
    prefix: --input
- id: in_outfile
  doc: output file name
  type: File
  inputBinding:
    prefix: --outfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input
  doc: HAllA output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_input)
- id: out_outfile
  doc: output file name
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- hallascatter
