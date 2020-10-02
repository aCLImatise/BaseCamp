class: CommandLineTool
id: cat_corrects.cwl
inputs:
- id: in_file_containing_names
  doc: a file containing names of erate files
  type: File
  inputBinding:
    prefix: -L
- id: in_output_file
  doc: output file
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- cat-corrects
