class: CommandLineTool
id: compress_fast5.cwl
inputs:
- id: input_path
  doc: Folder containing single read fast5 files
  type: string
  inputBinding:
    prefix: --input_path
- id: save_path
  doc: Folder to output multi read files to
  type: string
  inputBinding:
    prefix: --save_path
- id: in_place
  doc: Replace the old files with new files in place
  type: boolean
  inputBinding:
    prefix: --in_place
- id: compression
  doc: Target output compression type
  type: string
  inputBinding:
    prefix: --compression
- id: threads
  doc: Maximum number of threads to use
  type: string
  inputBinding:
    prefix: --threads
- id: recursive
  doc: Search recursively through folders for single_read fast5 files
  type: boolean
  inputBinding:
    prefix: --recursive
- id: ignore_symlinks
  doc: Ignore symlinks when searching recursively for fast5 files
  type: boolean
  inputBinding:
    prefix: --ignore_symlinks
outputs: []
cwlVersion: v1.1
baseCommand:
- compress_fast5
