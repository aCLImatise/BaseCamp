class: CommandLineTool
id: convertfilestops.cwl
inputs:
- id: in_where
  doc: "dirin:  input directory for image files\nsubstr:  Use 'allfiles' to convert\
    \ all files\nin the directory.\nres:  Input resolution of each image;\nassumed\
    \ to all be the same\nfileout:  Output ps file.\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convertfilestops
