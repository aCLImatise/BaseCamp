class: CommandLineTool
id: convertfilestops.cwl
inputs:
- id: where
  doc: "dirin:  input directory for image files substr:  Use 'allfiles' to convert\
    \ all files in the directory. res:  Input resolution of each image; assumed to\
    \ all be the same fileout:  Output ps file."
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- convertfilestops
