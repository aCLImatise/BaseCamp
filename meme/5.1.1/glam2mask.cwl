class: CommandLineTool
id: ../../../glam2mask.cwl
inputs:
- id: in_output_file_stdout
  doc: ': output file (stdout)'
  type: File
  inputBinding:
    prefix: -o
- id: in__mask_character
  doc: ': mask character (x)'
  type: boolean
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_stdout
  doc: ': output file (stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_stdout)
cwlVersion: v1.1
baseCommand:
- glam2mask
