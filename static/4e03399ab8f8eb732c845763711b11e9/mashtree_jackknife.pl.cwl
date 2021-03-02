class: CommandLineTool
id: mashtree_jackknife.pl.cwl
inputs:
- id: in_out_matrix
  doc: "''   Output file for distance matrix"
  type: File?
  inputBinding:
    prefix: --outmatrix
- id: in_reps
  doc: "0    How many bootstrap repetitions to run;\nIf zero, no bootstrapping."
  type: boolean?
  inputBinding:
    prefix: --reps
- id: in_num_cpus
  doc: "1    This will be passed to mashtree and will\nbe used to multithread reps."
  type: boolean?
  inputBinding:
    prefix: --numcpus
- id: in_trunc_length
  doc: 250  How many characters to keep in a filename
  type: boolean?
  inputBinding:
    prefix: --truncLength
- id: in_sort_order
  doc: "ABC  For neighbor-joining, the sort order can\nmake a difference. Options\
    \ include:\nABC (alphabetical), random, input-order"
  type: boolean?
  inputBinding:
    prefix: --sort-order
- id: in_min_depth
  doc: "5    If mindepth is zero, then it will be\nchosen in a smart but slower method,\n\
    to discard lower-abundance kmers."
  type: boolean?
  inputBinding:
    prefix: --mindepth
- id: in_seed
  doc: 42   Seed for mash sketch
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_save_sketches
  doc: "''   If a directory is supplied, then sketches\nwill be saved in it.\nIf no\
    \ directory is supplied, then sketches\nwill be saved alongside source files.\n"
  type: boolean?
  inputBinding:
    prefix: --save-sketches
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_matrix
  doc: "''   Output file for distance matrix"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_matrix)
hints: []
cwlVersion: v1.1
baseCommand:
- mashtree_jackknife.pl
