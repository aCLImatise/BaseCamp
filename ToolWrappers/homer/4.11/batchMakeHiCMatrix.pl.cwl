class: CommandLineTool
id: batchMakeHiCMatrix.pl.cwl
inputs:
- id: in_tag_directories_hic
  doc: '[HiC TagDir2] ... (Tag Directories of Hi-C experiments to visulize)'
  type: long?
  inputBinding:
    prefix: -d
- id: in_pos
  doc: <chr:start-end> (genomic position to visualize)
  type: boolean?
  inputBinding:
    prefix: -pos
- id: in_res
  doc: <#> (resolution of step size to use for analysis)
  type: boolean?
  inputBinding:
    prefix: -res
- id: in_window
  doc: <#> (resolution of window size for aggregating interactions)
  type: boolean?
  inputBinding:
    prefix: -window
- id: in_balance
  doc: (balance resulting Hi-C matrix)
  type: boolean?
  inputBinding:
    prefix: -balance
- id: in_stack
  doc: (Stacks matricies on top of one another i.e. square and symetric, non-rotated,
    default)
  type: boolean?
  inputBinding:
    prefix: -stack
- id: in_split
  doc: "(Creates split matricies i.e. square, non-symetric, non-rotated)\n(printed\
    \ in order of directories: 1\\2 3\\4 5\\6 ...)"
  type: boolean?
  inputBinding:
    prefix: -split
- id: in_rotate
  doc: (Rotates matrices, default)
  type: boolean?
  inputBinding:
    prefix: -rotate
- id: in_frac
  doc: '<#> (fraction of square matrix to consider for rotating, default: 0.333)'
  type: boolean?
  inputBinding:
    prefix: -frac
- id: in_cpu
  doc: '(number of different processes to use, def: 1)'
  type: boolean?
  inputBinding:
    prefix: -cpu
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- batchMakeHiCMatrix.pl
