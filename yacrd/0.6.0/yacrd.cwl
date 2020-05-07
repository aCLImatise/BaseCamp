class: CommandLineTool
id: yacrd.cwl
inputs:
- id: coverage
  doc: 'if coverage reach this value region is mark as bad [default: 0]'
  type: string
  inputBinding:
    prefix: --coverage
- id: input
  doc: path to input file overlap (.paf|.m4|.mhap) or yacrd report (.yacrd), format
    is autodetect and compression input is allowed (gz|bzip2|lzma)
  type: string
  inputBinding:
    prefix: --input
- id: not_coverage
  doc: 'if the ratio of bad region length on total length is lower than this value,
    read is marked as NotCovered [default: 0.8]'
  type: string
  inputBinding:
    prefix: --not-coverage
- id: on_disk
  doc: yacrd switches to 'ondisk' mode which will reduce memory usage but increase
    computation time. The value passed as a parameter is used as a prefix for the
    temporary files created by yacrd. Be careful if the prefix contains path separators
    (`/` for unix or `\` for windows) this folder will be deleted
  type: string
  inputBinding:
    prefix: --ondisk
- id: on_disk_buffer_size
  doc: "with the default value yacrd in 'ondisk' mode use around 1 GBytes, you can\
    \ increase to reduce runtime but increase memory usage [default: 64000000]"
  type: string
  inputBinding:
    prefix: --ondisk-buffer-size
- id: output
  doc: path output file
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- yacrd
