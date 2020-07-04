class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/htsbox_bgzip.cwl
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
- id: decompress_virtual_file
  doc: decompress at virtual file pointer INT
  type: long
  inputBinding:
    prefix: -b
- id: decompress_int_bytes
  doc: decompress INT bytes in the uncompressed file
  type: long
  inputBinding:
    prefix: -s
- id: b_gzip
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- bgzip
