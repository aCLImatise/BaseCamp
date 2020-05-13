class: CommandLineTool
id: snaptools_snap_add_pmat.cwl
inputs:
- id: snap_file
  doc: 'snap file. (default: None)'
  type: string
  inputBinding:
    prefix: --snap-file
- id: peak_file
  doc: 'bed file contains peaks. (default: None)'
  type: string
  inputBinding:
    prefix: --peak-file
- id: buffer_size
  doc: 'max number of barcodes be stored in the memory. (default: 1000)'
  type: string
  inputBinding:
    prefix: --buffer-size
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
- snap-add-pmat
