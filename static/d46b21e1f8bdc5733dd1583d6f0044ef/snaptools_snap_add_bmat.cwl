class: CommandLineTool
id: snaptools_snap_add_bmat.cwl
inputs:
- id: in_snap_file
  doc: 'snap file. (default: None)'
  type: File?
  inputBinding:
    prefix: --snap-file
- id: in_bin_size_list
  doc: "a list of bin size(s) to create the cell-by-bin count\nmatrix. The genome\
    \ will be divided into bins of the\nequal size of --bin-size-list to create the\
    \ cell x bin\ncount matrix. If more than one bin size are given,\nsnaptools will\
    \ generate a list of cell x bin matrices\nof different resolutions and stored\
    \ in the same snap\nfile. (default: [5000])"
  type: string[]
  inputBinding:
    prefix: --bin-size-list
- id: in_tmp_folder
  doc: "a directory to store temporary files. If not given,\nsnaptools will automatically\
    \ generate a temporary\nlocation to store temporary files. (default: None)"
  type: Directory?
  inputBinding:
    prefix: --tmp-folder
- id: in_verbose
  doc: "a boolen tag indicates output the progress. (default:\nTrue)\n"
  type: string?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- snaptools
- snap-add-bmat
