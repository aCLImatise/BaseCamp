class: CommandLineTool
id: seq2science_init.cwl
inputs:
- id: in_dir
  doc: "The path to the directory where to initialise the\nconfig and samples files.\n"
  type: File?
  inputBinding:
    prefix: --dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seq2science
- init
