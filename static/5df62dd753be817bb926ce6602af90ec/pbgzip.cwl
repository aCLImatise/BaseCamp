class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pbgzip.cwl
inputs:
- id: write_standard_output
  doc: write on standard output, keep original files unchanged
  type: boolean
  inputBinding:
    prefix: -c
- id: decompress
  doc: decompress
  type: boolean
  inputBinding:
    prefix: -d
- id: overwrite_files_asking
  doc: overwrite files without asking
  type: boolean
  inputBinding:
    prefix: -f
- id: number_of_threads
  doc: number of threads [8]
  type: long
  inputBinding:
    prefix: -n
- id: the_compress_type
  doc: the compress type (0 - gz, 1 - bz2) [0]
  type: long
  inputBinding:
    prefix: -t
- id: _compression_level
  doc: .. -9  the compression level [-1]
  type: boolean
  inputBinding:
    prefix: '-1'
- id: block_size_when
  doc: the block size when reading uncompressed data (must be less than or equal to
    65536; -1 is auto) [-1]
  type: boolean
  inputBinding:
    prefix: -S
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pbgzip
