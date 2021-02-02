class: CommandLineTool
id: ../../../oncogemini.cwl
inputs:
- id: in_annotation_dir
  doc: "Path to the annotation database. This argument is\noptional and if given will\
    \ take precedence over the\ndefault location stored in the oncogemini config file.\n\
    (default: None)"
  type: File
  inputBinding:
    prefix: --annotation-dir
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- oncogemini
