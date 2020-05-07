class: CommandLineTool
id: snaptools_snap_add_bmat.cwl
inputs:
- id: snap_file
  doc: 'snap file. (default: None)'
  type: string
  inputBinding:
    prefix: --snap-file
- id: bin_size_list
  doc: 'a list of bin size(s) to create the cell-by-bin count matrix. The genome will
    be divided into bins of the equal size of --bin-size-list to create the cell x
    bin count matrix. If more than one bin size are given, snaptools will generate
    a list of cell x bin matrices of different resolutions and stored in the same
    snap file. (default: [5000])'
  type: string[]
  inputBinding:
    prefix: --bin-size-list
- id: tmp_folder
  doc: 'a directory to store temporary files. If not given, snaptools will automatically
    generate a temporary location to store temporary files. (default: None)'
  type: string
  inputBinding:
    prefix: --tmp-folder
- id: verbose
  doc: 'a boolen tag indicates output the progress. (default: True)'
  type: string
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- snaptools
- snap-add-bmat
