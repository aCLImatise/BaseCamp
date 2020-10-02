class: CommandLineTool
id: snaptools_snap_add_pmat.cwl
inputs:
- id: in_snap_file
  doc: 'snap file. (default: None)'
  type: File
  inputBinding:
    prefix: --snap-file
- id: in_peak_file
  doc: 'bed file contains peaks. (default: None)'
  type: File
  inputBinding:
    prefix: --peak-file
- id: in_buffer_size
  doc: "max number of barcodes be stored in the memory.\n(default: 1000)"
  type: long
  inputBinding:
    prefix: --buffer-size
- id: in_tmp_folder
  doc: "a directory to store temporary files. If not given,\nsnaptools will automatically\
    \ generate a temporary\nlocation to store temporary files. (default: None)"
  type: Directory
  inputBinding:
    prefix: --tmp-folder
- id: in_verbose
  doc: "a boolen tag indicates output the progress. (default:\nTrue)\n"
  type: string
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- snaptools
- snap-add-pmat
