class: CommandLineTool
id: bgzip.cwl
inputs:
- id: offset
  doc: decompress at virtual file pointer (0-based uncompressed offset)
  type: long
  inputBinding:
    prefix: --offset
- id: stdout
  doc: write on standard output, keep original files unchanged
  type: boolean
  inputBinding:
    prefix: --stdout
- id: decompress
  doc: decompress
  type: boolean
  inputBinding:
    prefix: --decompress
- id: force
  doc: overwrite files without asking
  type: boolean
  inputBinding:
    prefix: --force
- id: index
  doc: compress and create BGZF index
  type: boolean
  inputBinding:
    prefix: --index
- id: index_name
  doc: name of BGZF index file [file.gz.gzi]
  type: File
  inputBinding:
    prefix: --index-name
- id: compress_level
  doc: Compression level to use when compressing; 0 to 9, or -1 for default [-1]
  type: long
  inputBinding:
    prefix: --compress-level
- id: re_index
  doc: (re)index compressed file
  type: boolean
  inputBinding:
    prefix: --reindex
- id: reb_gzip
  doc: use an index file to bgzip a file
  type: boolean
  inputBinding:
    prefix: --rebgzip
- id: size
  doc: decompress INT bytes (uncompressed size)
  type: long
  inputBinding:
    prefix: --size
- id: threads
  doc: number of compression threads to use [1]
  type: long
  inputBinding:
    prefix: --threads
- id: test
  doc: test integrity of compressed file
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- bgzip
