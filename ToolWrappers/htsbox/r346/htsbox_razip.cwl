class: CommandLineTool
id: htsbox_razip.cwl
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
- id: in_list_compressed_contents
  doc: list compressed file contents
  type: boolean
  inputBinding:
    prefix: -l
- id: in_decompress_int_position
  doc: decompress at INT position in the uncompressed file
  type: long
  inputBinding:
    prefix: -b
- id: in_decompress_int_bytes
  doc: decompress INT bytes in the uncompressed file
  type: long
  inputBinding:
    prefix: -s
- id: in_ra_zip
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
- razip
