class: CommandLineTool
id: phyloP.cwl
inputs:
- id: confidence_interval
  doc: (see below).
  type: boolean
  inputBinding:
    prefix: --confidence-interval
- id: chrom
  doc: (Optionally use with --wig-scores or --base-by-base) Chromosome name for wig
    output.  Default is root of multiple alignment filename.
  type: string
  inputBinding:
    prefix: --chrom
- id: log
  doc: 'Write log to <fname> describing details of parameter optimization. Useful
    for debugging.  (Warning: may produce large file.)'
  type: string
  inputBinding:
    prefix: --log
- id: seed
  doc: Provide a random number seed, should be an integer >=1.  Random numbers are
    used in some cases to generate starting values for optimization.  If not specified
    will use a seed based on the current time.
  type: string
  inputBinding:
    prefix: --seed
- id: no_prune
  doc: Do not prune species from tree which are not in alignment.  Rather, treat these
    species as having missing data in the alignment.  Missing data does have an effect
    on the results when --method SPH is used.
  type: boolean
  inputBinding:
    prefix: --no-prune
- id: 'null'
  doc: Compute just the null (prior) distribution of the number of substitutions,
    as defined by the tree model and the given number of sites, and output as a table.  The
    'alignment' argument will be ignored.  If used with --subtree, the joint distribution
    over the number of substitutions in the specified supertree and subtree will be
    output instead.
  type: string
  inputBinding:
    prefix: --null
- id: posterior
  doc: Compute just the posterior distribution of the number of substitutions, given
    the alignment and the model, and output as a table.  If used with --subtree, the
    joint distribution over the number of substitutions in the specified supertree
    and subtree will be output instead.
  type: boolean
  inputBinding:
    prefix: --posterior
- id: fit_model
  doc: Fit model to data before computing posterior distribution, by estimating a
    scale factor for the whole tree or (if --subtree) separate scale factors for the
    specified subtree and supertree. Makes p-values less conservative.  This option
    has no effect with --null and currently cannot be used with --features.  It can
    be used with --wig-scores and --base-by-base.
  type: boolean
  inputBinding:
    prefix: --fit-model
- id: epsilon
  doc: (Default 1e-10 or 1e-6 if --wig-scores or --base-by-base) Threshold used in
    truncating tails of distributions; tail probabilities less than this value are
    discarded.  To get accurate p-values smaller than 1e-10, this option will need
    to be used, at some cost in speed.  Note that truncation affects only *right*
    tails, not left tails, so it should be an issue only with p-values of acceleration.
  type: string
  inputBinding:
    prefix: --epsilon
- id: confidence_interval
  doc: Allow for uncertainty in the estimate of the actual number of substitutions
    by using a (central) confidence interval about the mean of the specified size
    (0 < val < 1).  To be conservative, the maximum of this interval is used when
    computing a p-value of conservation, and the minimum is used when computing a
    p-value of acceleration.  The variance of the posterior is computed exactly, but
    the confidence interval is based on the assumption that the combined distribution
    will be approximately normal (true for large numbers of sites by central limit
    theorem).
  type: string
  inputBinding:
    prefix: --confidence-interval
- id: quantiles
  doc: (For use with --null or --posterior) Report quantiles of distribution rather
    than whole distribution.
  type: boolean
  inputBinding:
    prefix: --quantiles
outputs: []
cwlVersion: v1.1
baseCommand:
- phyloP
