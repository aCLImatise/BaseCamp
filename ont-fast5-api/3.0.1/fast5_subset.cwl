#!/usr/bin/env cwl-runner

baseCommand:
- fast5_subset
class: CommandLineTool
cwlVersion: v1.0
id: fast5_subset
inputs:
- doc: ''
  id: tool
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: for
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: extracting
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: reads
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: from
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: a
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: multi_read_fast5_file
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: by
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: read_id
  inputBinding:
    position: 8
  type: string
- doc: Path to Fast5 file or directory of Fast5 files
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Folder to output MultiRead subset to
  id: save_path
  inputBinding:
    prefix: --save_path
  type: string
- doc: File containing list of read ids to extract (or sequencing_summary.txt file)
  id: read_id_list
  inputBinding:
    prefix: --read_id_list
  type: string
- doc: Root of output filename, default='batch' -> 'batch_0.fast5'
  id: filename_base
  inputBinding:
    prefix: --filename_base
  type: File
- doc: Number of reads per multi-read file
  id: batch_size
  inputBinding:
    prefix: --batch_size
  type: string
- doc: Maximum number of threads to use
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Search recursively through folders for MultiRead fast5 files
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
- doc: Ignore symlinks when searching recursively for fast5 files
  id: ignore_symlinks
  inputBinding:
    prefix: --ignore_symlinks
  type: boolean
- doc: File containing names of files to search in
  id: file_list
  inputBinding:
    prefix: --file_list
  type: File
