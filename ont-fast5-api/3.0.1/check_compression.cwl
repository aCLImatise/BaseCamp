#!/usr/bin/env cwl-runner

baseCommand:
- check_compression
class: CommandLineTool
cwlVersion: v1.0
id: check_compression
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
  id: checking
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: the
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: compression
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: type
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: of
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: raw
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: data
  inputBinding:
    position: 8
  type: string
- doc: ''
  id: in
  inputBinding:
    position: 9
  type: string
- doc: ''
  id: fast5
  inputBinding:
    position: 10
  type: string
- doc: ''
  id: files
  inputBinding:
    position: 11
  type: File
- doc: Path to Fast5 file or directory of Fast5 files
  id: input_path
  inputBinding:
    prefix: --input_path
  type: string
- doc: 'Check all reads in a file individually (default: check only the first read)'
  id: check_all_reads
  inputBinding:
    prefix: --check_all_reads
  type: boolean
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
