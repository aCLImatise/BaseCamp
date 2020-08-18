class: CommandLineTool
id: ../../../lrztar.cwl
inputs:
- id: path_will_decompress_path_tarball
  doc: ': <path1> will decompress a <path1> lrzip tarball to current directory.'
  type: boolean
  inputBinding:
    prefix: -d
- id: path_will_decompress_d_tarball
  doc: ': <path2> will decompress a -d specified lrzip tarball to <path2> path.'
  type: boolean
  inputBinding:
    prefix: -O
- id: will_force_overwrites
  doc: ': will force overwrites.'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- lrztar
