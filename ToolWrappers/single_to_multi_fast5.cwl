class: CommandLineTool
id: single_to_multi_fast5.cwl
inputs:
- id: in_input_path
  doc: Folder containing single read fast5 files
  type: File
  inputBinding:
    prefix: --input_path
- id: in_save_path
  doc: Folder to output multi read files to
  type: Directory
  inputBinding:
    prefix: --save_path
- id: in_filename_base
  doc: "Root of output filename, default='batch' ->\n'batch_0.fast5'"
  type: File
  inputBinding:
    prefix: --filename_base
- id: in_batch_size
  doc: Number of reads per multi-read file
  type: long
  inputBinding:
    prefix: --batch_size
- id: in_threads
  doc: Number of threads to use
  type: long
  inputBinding:
    prefix: --threads
- id: in_recursive
  doc: "Search recursively through folders for single_read\nfast5 files"
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_ignore_symlinks
  doc: Ignore symlinks when searching recursively for fast5
  type: boolean
  inputBinding:
    prefix: --ignore_symlinks
- id: in_files
  doc: -c {vbz,vbz_legacy_v0,gzip,None}, --compression {vbz,vbz_legacy_v0,gzip,None}
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_path
  doc: Folder to output multi read files to
  type: Directory
  outputBinding:
    glob: $(inputs.in_save_path)
- id: out_filename_base
  doc: "Root of output filename, default='batch' ->\n'batch_0.fast5'"
  type: File
  outputBinding:
    glob: $(inputs.in_filename_base)
cwlVersion: v1.1
baseCommand:
- single_to_multi_fast5
