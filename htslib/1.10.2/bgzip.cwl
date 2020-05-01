#!/usr/bin/env cwl-runner

baseCommand:
- bgzip
class: CommandLineTool
cwlVersion: v1.0
id: bgzip
inputs:
- doc: decompress at virtual file pointer (0-based uncompressed offset)
  id: offset
  inputBinding:
    prefix: --offset
  type: long
- doc: write on standard output, keep original files unchanged
  id: stdout
  inputBinding:
    prefix: --stdout
  type: boolean
- doc: decompress
  id: decompress
  inputBinding:
    prefix: --decompress
  type: boolean
- doc: overwrite files without asking
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: compress and create BGZF index
  id: index
  inputBinding:
    prefix: --index
  type: boolean
- doc: name of BGZF index file [file.gz.gzi]
  id: index_name
  inputBinding:
    prefix: --index-name
  type: File
- doc: Compression level to use when compressing; 0 to 9, or -1 for default [-1]
  id: compress_level
  inputBinding:
    prefix: --compress-level
  type: long
- doc: (re)index compressed file
  id: re_index
  inputBinding:
    prefix: --reindex
  type: boolean
- doc: use an index file to bgzip a file
  id: reb_gzip
  inputBinding:
    prefix: --rebgzip
  type: boolean
- doc: decompress INT bytes (uncompressed size)
  id: size
  inputBinding:
    prefix: --size
  type: long
- doc: number of compression threads to use [1]
  id: threads
  inputBinding:
    prefix: --threads
  type: long
- doc: test integrity of compressed file
  id: test
  inputBinding:
    prefix: --test
  type: boolean
