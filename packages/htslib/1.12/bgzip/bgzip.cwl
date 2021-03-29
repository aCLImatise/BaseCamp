class: CommandLineTool
id: bgzip.cwl
inputs:
- id: in_offset
  doc: decompress at virtual file pointer (0-based uncompressed offset)
  type: long?
  inputBinding:
    prefix: --offset
- id: in_stdout
  doc: write on standard output, keep original files unchanged
  type: boolean?
  inputBinding:
    prefix: --stdout
- id: in_decompress
  doc: decompress
  type: boolean?
  inputBinding:
    prefix: --decompress
- id: in_force
  doc: overwrite files without asking
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_index
  doc: compress and create BGZF index
  type: boolean?
  inputBinding:
    prefix: --index
- id: in_index_name
  doc: name of BGZF index file [file.gz.gzi]
  type: File?
  inputBinding:
    prefix: --index-name
- id: in_compress_level
  doc: Compression level to use when compressing; 0 to 9, or -1 for default [-1]
  type: long?
  inputBinding:
    prefix: --compress-level
- id: in_re_index
  doc: (re)index compressed file
  type: boolean?
  inputBinding:
    prefix: --reindex
- id: in_reb_gzip
  doc: use an index file to bgzip a file
  type: boolean?
  inputBinding:
    prefix: --rebgzip
- id: in_size
  doc: decompress INT bytes (uncompressed size)
  type: long?
  inputBinding:
    prefix: --size
- id: in_threads
  doc: number of compression threads to use [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_test
  doc: test integrity of compressed file
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/htslib:1.12--hd3b49d5_0
cwlVersion: v1.1
baseCommand:
- bgzip
