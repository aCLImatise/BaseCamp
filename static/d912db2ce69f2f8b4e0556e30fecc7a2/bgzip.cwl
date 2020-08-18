class: CommandLineTool
id: ../../../bgzip.cwl
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
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bgzip
