class: CommandLineTool
id: pbsTrain.cwl
inputs:
- id: in_suff_stats
  doc: Output is a code file that can be used with
  type: File?
  inputBinding:
    prefix: --suff-stats
- id: in_nbytes
  doc: "Number of bytes per encoded probabilistic base (default 1).\nThe size of the\
    \ code will be 256^b - 1 (one letter in the code\nis reserved for gaps).  Values\
    \ as large as 4 are allowed for\nb, but in the current implementation, performance\n\
    considerations effectively limit it to 2 or 3."
  type: long?
  inputBinding:
    prefix: --nbytes
- id: in_nrows
  doc: "Number of \"rows\" per dimension in the simplex grid.  Default\nis maximum\
    \ possible for code size."
  type: long?
  inputBinding:
    prefix: --nrows
- id: in_no_greedy
  doc: "Skip greedy optimization -- just assign a single\nrepresentative point to\
    \ each region of the probability\nsimplex, equal to the (weighted) mean of all\
    \ vectors from the\ntraining data that fall in that region."
  type: boolean?
  inputBinding:
    prefix: --no-greedy
- id: in_no_train
  doc: "Ignore the data entirely; just use the centroid of each\nsimplex partition.\
    \  The dimension of the simplex must be given\n(<dim>) but no data file is required."
  type: File?
  inputBinding:
    prefix: --no-train
- id: in_log
  doc: write log of optimization procedure to specified file.
  type: File?
  inputBinding:
    prefix: --log
- id: in_dimension_dot
  doc: By default, n is given the largest possible value such
  type: string
  inputBinding:
    position: 0
- id: in_size_dot
  doc: 'EXAMPLES:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_suff_stats
  doc: Output is a code file that can be used with
  type: File?
  outputBinding:
    glob: $(inputs.in_suff_stats)
hints: []
cwlVersion: v1.1
baseCommand:
- pbsTrain
