class: CommandLineTool
id: multi_to_single_fast5.cwl
inputs:
- id: in_input_path
  doc: "MultiRead fast5 file or path to directory of MultiRead\nfiles"
  type: File
  inputBinding:
    prefix: --input_path
- id: in_save_path
  doc: Folder to output SingleRead fast5 files to
  type: Directory
  inputBinding:
    prefix: --save_path
- id: in_recursive
  doc: Search recursively through folders for MultiRead fast5
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_ignore_symlinks
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ignore_symlinks
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_path
  doc: Folder to output SingleRead fast5 files to
  type: Directory
  outputBinding:
    glob: $(inputs.in_save_path)
cwlVersion: v1.1
baseCommand:
- multi_to_single_fast5
