class: CommandLineTool
id: ../../../yacrd.cwl
inputs:
- id: in_coverage
  doc: 'if coverage reach this value region is mark as bad [default: 0]'
  type: long
  inputBinding:
    prefix: --coverage
- id: in_input
  doc: "path to input file overlap (.paf|.m4|.mhap) or yacrd report (.yacrd), format\
    \ is autodetect and compression\ninput is allowed (gz|bzip2|lzma)"
  type: File
  inputBinding:
    prefix: --input
- id: in_not_coverage
  doc: "if the ratio of bad region length on total length is lower than this value,\
    \ read is marked as NotCovered\n[default: 0.8]"
  type: long
  inputBinding:
    prefix: --not-coverage
- id: in_on_disk
  doc: "yacrd switches to 'ondisk' mode which will reduce memory usage but increase\
    \ computation time. The value\npassed as a parameter is used as a prefix for the\
    \ temporary files created by yacrd. Be careful if the prefix\ncontains path separators\
    \ (`/` for unix or `\\` for windows) this folder will be deleted"
  type: File
  inputBinding:
    prefix: --ondisk
- id: in_on_disk_buffer_size
  doc: "with the default value yacrd in 'ondisk' mode use around 1 GBytes, you can\
    \ increase to reduce runtime but\nincrease memory usage [default: 64000000]"
  type: long
  inputBinding:
    prefix: --ondisk-buffer-size
- id: in_output
  doc: path output file
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: path output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- yacrd
