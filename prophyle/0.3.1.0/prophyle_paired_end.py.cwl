class: CommandLineTool
id: ../../../prophyle_paired_end.py.cwl
inputs:
- id: in_output_file
  doc: "output file [stdout]\n"
  type: File
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "output file [stdout]\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- prophyle_paired_end.py
