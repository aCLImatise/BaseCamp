class: CommandLineTool
id: pbsTrain.cwl
inputs:
- id: nrows
  doc: Number of "rows" per dimension in the simplex grid.  Default is maximum possible
    for code size.
  type: string
  inputBinding:
    prefix: --nrows
- id: nbytes
  doc: Number of bytes per encoded probabilistic base (default 1). The size of the
    code will be 256^b - 1 (one letter in the code is reserved for gaps).  Values
    as large as 4 are allowed for b, but in the current implementation, performance
    considerations effectively limit it to 2 or 3.
  type: string
  inputBinding:
    prefix: --nbytes
- id: no_greedy
  doc: Skip greedy optimization -- just assign a single representative point to each
    region of the probability simplex, equal to the (weighted) mean of all vectors
    from the training data that fall in that region.
  type: boolean
  inputBinding:
    prefix: --no-greedy
- id: no_train
  doc: Ignore the data entirely; just use the centroid of each simplex partition.  The
    dimension of the simplex must be given (<dim>) but no data file is required.
  type: string
  inputBinding:
    prefix: --no-train
- id: log
  doc: write log of optimization procedure to specified file.
  type: File
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- pbsTrain
