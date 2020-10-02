class: CommandLineTool
id: pbsTrain.cwl
inputs:
- id: in_suff_stats
  doc: Output is a code file that can be used with
  type: File
  inputBinding:
    prefix: --suff-stats
- id: in_nbytes
  doc: "Number of bytes per encoded probabilistic base (default 1).\nThe size of the\
    \ code will be 256^b - 1 (one letter in the code\nis reserved for gaps).  Values\
    \ as large as 4 are allowed for\nb, but in the current implementation, performance\n\
    considerations effectively limit it to 2 or 3."
  type: long
  inputBinding:
    prefix: --nbytes
- id: in_nrows
  doc: "Number of \"rows\" per dimension in the simplex grid.  Default\nis maximum\
    \ possible for code size."
  type: long
  inputBinding:
    prefix: --nrows
- id: in_no_greedy
  doc: "Skip greedy optimization -- just assign a single\nrepresentative point to\
    \ each region of the probability\nsimplex, equal to the (weighted) mean of all\
    \ vectors from the\ntraining data that fall in that region."
  type: boolean
  inputBinding:
    prefix: --no-greedy
- id: in_no_train
  doc: "Ignore the data entirely; just use the centroid of each\nsimplex partition.\
    \  The dimension of the simplex must be given\n(<dim>) but no data file is required."
  type: File
  inputBinding:
    prefix: --no-train
- id: in_log
  doc: write log of optimization procedure to specified file.
  type: File
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
- id: in_one_five_eight_zero_zero_six
  doc: 0.191119        0.046081        0.695205        0.067595
  type: long
  inputBinding:
    position: 0
- id: in_two_two_one_nine_three_seven
  doc: 0.047309        0.122834        0.043852        0.786004
  type: long
  inputBinding:
    position: 1
- id: in_one_five_nine_four_seven_two
  doc: 0.067254        0.697947        0.045959        0.188840
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_suff_stats
  doc: Output is a code file that can be used with
  type: File
  outputBinding:
    glob: $(inputs.in_suff_stats)
cwlVersion: v1.1
baseCommand:
- pbsTrain
