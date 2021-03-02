class: CommandLineTool
id: pbgzip.cwl
inputs:
- id: in_write_keep_files
  doc: write on standard output, keep original files unchanged
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_decompress
  doc: decompress
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_overwrite_files_asking
  doc: overwrite files without asking
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_number_of_threads
  doc: number of threads [8]
  type: long?
  inputBinding:
    prefix: -n
- id: in_compress_type_bz
  doc: the compress type (0 - gz, 1 - bz2) [0]
  type: long?
  inputBinding:
    prefix: -t
- id: in__compression_level
  doc: .. -9  the compression level [-1]
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_block_size_when
  doc: the block size when reading uncompressed data (must be less than or equal to
    65536; -1 is auto) [-1]
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pbgzip
