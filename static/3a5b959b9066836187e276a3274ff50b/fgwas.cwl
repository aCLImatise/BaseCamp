class: CommandLineTool
id: fgwas.cwl
inputs:
- id: in_input_file_zscores
  doc: '[file name] input file w/ Z-scores'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_stem_names_output
  doc: '[string] stem for names of output files'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_annotations_use_annotations
  doc: '[string] which annotation(s) to use. Separate multiple annotations with plus
    signs'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_dists
  doc: '[string:string] the name of the distance annotation(s) and the file(s) containing
    the distance model(s)'
  type: boolean?
  inputBinding:
    prefix: -dists
- id: in_block_size_number
  doc: '[integer] block size in number of SNPs (5000)'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_bed
  doc: '[string] read block positions from a .bed file'
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_variance_prior_normalized
  doc: '[float] variance of prior on normalized effect size. To average priors, separate
    with commas (0.01,0.1,0.5)'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_penalty_sum_squared
  doc: '[float] penalty on sum of squared lambdas, only relevant for -print (0.2)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_print
  doc: the per-SNP output
  type: string?
  inputBinding:
    prefix: -print
- id: in_xv
  doc: 10-fold cross-validation
  type: long?
  inputBinding:
    prefix: -xv
- id: in_dens
  doc: '[string float float] model segment probability according to quantiles of an
    annotation'
  type: boolean?
  inputBinding:
    prefix: -dens
- id: in_cc
  doc: is a case-control study, which implies a different input file format
  type: File?
  inputBinding:
    prefix: -cc
- id: in_fine
  doc: is a fine mapping study, which implies a different input file format
  type: File?
  inputBinding:
    prefix: -fine
- id: in_only_p
  doc: do optimization under penalized likelihood
  type: string?
  inputBinding:
    prefix: -onlyp
- id: in_cond
  doc: '[string] estimate the effect size of an annotation conditional on the others
    in the model'
  type: boolean?
  inputBinding:
    prefix: -cond
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fgwas
