class: CommandLineTool
id: hicInfo.cwl
inputs:
- id: in_matrices
  doc: "The matrix (or multiple matrices) to get information\nabout. HiCExplorer supports\
    \ the following file\nformats: h5 (native HiCExplorer format) and cool."
  type: string[]
  inputBinding:
    prefix: --matrices
- id: in_out_filename
  doc: "File name to save information of the matrix instead of\nwriting it to the\
    \ bash."
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_no_metadata
  doc: "Do not use meta data from cooler file to display\ninformation. This method\
    \ is slower and was the default\nuntil version 2.2 of HiCExplorer. H5 files always\
    \ use\nthis parameter."
  type: boolean?
  inputBinding:
    prefix: --no_metadata
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "File name to save information of the matrix instead of\nwriting it to the\
    \ bash."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- hicInfo
