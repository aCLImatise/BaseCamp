class: CommandLineTool
id: htsbox_bgzip.cwl
inputs:
- id: in_write_keep_files
  doc: write on standard output, keep original files unchanged
  type: boolean
  inputBinding:
    prefix: -c
- id: in_decompress
  doc: decompress
  type: boolean
  inputBinding:
    prefix: -d
- id: in_overwrite_files_asking
  doc: overwrite files without asking
  type: boolean
  inputBinding:
    prefix: -f
- id: in_decompress_virtual_file
  doc: decompress at virtual file pointer INT
  type: long
  inputBinding:
    prefix: -b
- id: in_decompress_int_bytes
  doc: decompress INT bytes in the uncompressed file
  type: long
  inputBinding:
    prefix: -s
- id: in_b_gzip
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- htsbox
- bgzip
