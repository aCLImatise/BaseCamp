class: CommandLineTool
id: lrztar.cwl
inputs:
- id: in_path_decompress_lrzip_tarball
  doc: ': <path1> will decompress a <path1> lrzip tarball to current directory.'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_path_decompress_d_tarball
  doc: ': <path2> will decompress a -d specified lrzip tarball to <path2> path.'
  type: boolean?
  inputBinding:
    prefix: -O
- id: in__force_overwrites
  doc: ': will force overwrites.'
  type: boolean?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lrztar
