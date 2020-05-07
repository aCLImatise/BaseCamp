class: CommandLineTool
id: dimspy_merge_peaklists.cwl
inputs:
- id: input
  doc: Multiple HDF5 files that contain peaklists or peak matrix from one of the processing
    steps.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Directory (if using multilist column in filelist) or HDF5 file to write to.
  type: string
  inputBinding:
    prefix: --output
- id: file_list
  doc: Tab-delimited file that list all the data files (*.raw or *.mzml) and meta
    data (filename, technical replicate, class, batch, multiList).
  type: File
  inputBinding:
    prefix: --filelist
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- merge-peaklists
