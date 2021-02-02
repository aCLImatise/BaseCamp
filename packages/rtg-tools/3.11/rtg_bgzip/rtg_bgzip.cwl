class: CommandLineTool
id: rtg_bgzip.cwl
inputs:
- id: in_compression_level
  doc: "the compression level to use, between 1 (least\nbut fast) and 9 (highest but\
    \ slow) (Default is 5)"
  type: long
  inputBinding:
    prefix: --compression-level
- id: in_decompress
  doc: decompress
  type: boolean
  inputBinding:
    prefix: --decompress
- id: in_force
  doc: force overwrite of existing output file
  type: File
  inputBinding:
    prefix: --force
- id: in_no_terminate
  doc: if set, do not add the block gzip termination
  type: boolean
  inputBinding:
    prefix: --no-terminate
- id: in_block
  doc: -c, --stdout                write on standard output, keep original files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: force overwrite of existing output file
  type: File
  outputBinding:
    glob: $(inputs.in_force)
cwlVersion: v1.1
baseCommand:
- rtg
- bgzip
