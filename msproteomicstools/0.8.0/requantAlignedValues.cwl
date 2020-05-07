class: CommandLineTool
id: requantAlignedValues.py.cwl
inputs:
- id: in
  doc: A list of transformation files in the same folder as the .chrom.mzML files
  type: string[]
  inputBinding:
    prefix: --in
- id: peak_groups_in_file
  doc: Infile containing peakgroups (outfile from feature_alignment.py)
  type: string
  inputBinding:
    prefix: --peakgroups_infile
- id: out
  doc: Output file with imputed values
  type: string
  inputBinding:
    prefix: --out
- id: file_format
  doc: Which input file format is used (openswath, mprophet or peakview)
  type: File
  inputBinding:
    prefix: --file_format
- id: out_matrix
  doc: Matrix containing one peak group per row (supports .csv, .tsv or .xls)
  type: string
  inputBinding:
    prefix: --out_matrix
- id: matrix_output_method
  doc: Which columns are written besides Intensity (none, RT, score, source or full)
  type: string
  inputBinding:
    prefix: --matrix_output_method
- id: border_option
  doc: 'How to determine integration border (possible values: max_width, mean, median).
    Max width will use the maximal possible width (most conservative since it will
    overestimate the background signal).'
  type: string
  inputBinding:
    prefix: --border_option
- id: dry_run
  doc: Perform a dry run only
  type: boolean
  inputBinding:
    prefix: --dry_run
- id: test
  doc: For running the tests (does not add a random id to the results)
  type: boolean
  inputBinding:
    prefix: --test
- id: cache_in_memory
  doc: Cache data from a single run in memory
  type: boolean
  inputBinding:
    prefix: --cache_in_memory
- id: method
  doc: Which method to use (singleShortestPath, singleClosestRun, reference)
  type: string
  inputBinding:
    prefix: --method
- id: realign_runs
  doc: "How to re-align runs in retention time ('diRT': use only deltaiRT from the\
    \ input file, 'linear': perform a linear regression using best peakgroups, 'splineR':\
    \ perform a spline fit using R, 'splineR_external': perform a spline fit using\
    \ R (start an R process using the command line), 'splinePy' use Python native\
    \ spline from scikits.datasmooth (slow!), 'lowess': use Robust locally weighted\
    \ regression (lowess smoother), 'nonCVSpline, CVSpline': splines with and without\
    \ cross-validation, 'Earth' : use Multivariate Adaptive Regression Splines using\
    \ py-earth"
  type: string
  inputBinding:
    prefix: --realign_runs
- id: verbosity
  doc: Verbosity
  type: string
  inputBinding:
    prefix: --verbosity
- id: do_single_run
  doc: Only do a single run
  type: boolean
  inputBinding:
    prefix: --do_single_run
- id: disable_isotopic_grouping
  doc: Disable grouping of isotopic variants by peptide_group_label, thus disabling
    matching of isotopic variants of the same peptide across channels. If turned off,
    each isotopic channel will be matched independently of the other. If enabled,
    the more certain identification will be used to infer the location of the peak
    in the other channel.
  type: boolean
  inputBinding:
    prefix: --disable_isotopic_grouping
- id: disable_isotopic_transfer
  doc: Disable the transfer of isotopic boundaries in all cases. If enabled (default),
    the best (best score) isotopic channel dictates the peak boundaries and all other
    channels use those boundaries. This ensures consistency in peak picking in all
    cases.
  type: boolean
  inputBinding:
    prefix: --disable_isotopic_transfer
outputs: []
cwlVersion: v1.1
baseCommand:
- requantAlignedValues.py
