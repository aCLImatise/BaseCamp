class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/multi_to_single_fast5.cwl
inputs:
- id: input_path
  doc: MultiRead fast5 file or path to directory of MultiRead files
  type: string
  inputBinding:
    prefix: --input_path
- id: save_path
  doc: Folder to output SingleRead fast5 files to
  type: string
  inputBinding:
    prefix: --save_path
- id: recursive
  doc: Search recursively through folders for MultiRead fast5 files
  type: boolean
  inputBinding:
    prefix: --recursive
- id: ignore_symlinks
  doc: Ignore symlinks when searching recursively for fast5 files
  type: boolean
  inputBinding:
    prefix: --ignore_symlinks
- id: threads
  doc: Number of threads to use
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- multi_to_single_fast5
