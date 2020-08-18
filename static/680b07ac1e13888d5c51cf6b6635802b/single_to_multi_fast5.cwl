class: CommandLineTool
id: ../../../single_to_multi_fast5.cwl
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
- id: filename_base
  doc: Root of output filename, default='batch' -> 'batch_0.fast5'
  type: File
  inputBinding:
    prefix: --filename_base
- id: batch_size
  doc: Number of reads per multi-read file
  type: string
  inputBinding:
    prefix: --batch_size
- id: threads
  doc: Number of threads to use
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
- id: compression
  doc: Target output compression type
  type: string
  inputBinding:
    prefix: --compression
outputs: []
cwlVersion: v1.1
baseCommand:
- single_to_multi_fast5
