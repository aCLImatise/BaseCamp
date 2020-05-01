#!/usr/bin/env cwl-runner

baseCommand:
- compress_fast5
class: CommandLineTool
cwlVersion: v1.0
id: compress_fast5
inputs:
- doc: Folder containing single read fast5 files
  id: input_path
  inputBinding:
    prefix: --input_path
  type: string
- doc: Folder to output multi read files to
  id: save_path
  inputBinding:
    prefix: --save_path
  type: string
- doc: Replace the old files with new files in place
  id: in_place
  inputBinding:
    prefix: --in_place
  type: boolean
- doc: Target output compression type
  id: compression
  inputBinding:
    prefix: --compression
  type: string
- doc: Maximum number of threads to use
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Search recursively through folders for single_read fast5 files
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
- doc: Ignore symlinks when searching recursively for fast5 files
  id: ignore_symlinks
  inputBinding:
    prefix: --ignore_symlinks
  type: boolean
