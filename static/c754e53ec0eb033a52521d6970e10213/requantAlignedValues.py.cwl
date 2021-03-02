class: CommandLineTool
id: requantAlignedValues.py.cwl
inputs:
- id: in_in
  doc: "A list of transformation files in the same folder as\nthe .chrom.mzML files"
  type: string[]
  inputBinding:
    prefix: --in
- id: in_peak_groups_in_file
  doc: "Infile containing peakgroups (outfile from\nfeature_alignment.py)"
  type: File?
  inputBinding:
    prefix: --peakgroups_infile
- id: in_out
  doc: Output file with imputed values
  type: File?
  inputBinding:
    prefix: --out
- id: in_file_format
  doc: "Which input file format is used (openswath, mprophet\nor peakview)"
  type: File?
  inputBinding:
    prefix: --file_format
- id: in_out_matrix
  doc: "Matrix containing one peak group per row (supports\n.csv, .tsv or .xls)"
  type: string?
  inputBinding:
    prefix: --out_matrix
- id: in_matrix_output_method
  doc: "Which columns are written besides Intensity (none, RT,\nscore, source or full)"
  type: string?
  inputBinding:
    prefix: --matrix_output_method
- id: in_border_option
  doc: "How to determine integration border (possible values:\nmax_width, mean, median).\
    \ Max width will use the\nmaximal possible width (most conservative since it\n\
    will overestimate the background signal)."
  type: long?
  inputBinding:
    prefix: --border_option
- id: in_dry_run
  doc: Perform a dry run only
  type: boolean?
  inputBinding:
    prefix: --dry_run
- id: in_test
  doc: "For running the tests (does not add a random id to the\nresults)"
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_cache_in_memory
  doc: Cache data from a single run in memory
  type: boolean?
  inputBinding:
    prefix: --cache_in_memory
- id: in_method
  doc: "Which method to use (singleShortestPath,\nsingleClosestRun, reference)"
  type: string?
  inputBinding:
    prefix: --method
- id: in_realign_runs
  doc: "How to re-align runs in retention time ('diRT': use\nonly deltaiRT from the\
    \ input file, 'linear': perform a\nlinear regression using best peakgroups, 'splineR':\n\
    perform a spline fit using R, 'splineR_external':\nperform a spline fit using\
    \ R (start an R process using\nthe command line), 'splinePy' use Python native\
    \ spline\nfrom scikits.datasmooth (slow!), 'lowess': use Robust\nlocally weighted\
    \ regression (lowess smoother),\n'nonCVSpline, CVSpline': splines with and without\n\
    cross-validation, 'Earth' : use Multivariate Adaptive\nRegression Splines using\
    \ py-earth"
  type: File?
  inputBinding:
    prefix: --realign_runs
- id: in_disable_isotopic_grouping
  doc: "Disable grouping of isotopic variants by\npeptide_group_label, thus disabling\
    \ matching of\nisotopic variants of the same peptide across channels.\nIf turned\
    \ off, each isotopic channel will be matched\nindependently of the other. If enabled,\
    \ the more\ncertain identification will be used to infer the\nlocation of the\
    \ peak in the other channel."
  type: boolean?
  inputBinding:
    prefix: --disable_isotopic_grouping
- id: in_disable_isotopic_transfer
  doc: "Disable the transfer of isotopic boundaries in all\ncases. If enabled (default),\
    \ the best (best score)\nisotopic channel dictates the peak boundaries and all\n\
    other channels use those boundaries. This ensures\nconsistency in peak picking\
    \ in all cases.\n"
  type: boolean?
  inputBinding:
    prefix: --disable_isotopic_transfer
- id: in_verbosity
  doc: --do_single_run       Only do a single run
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output file with imputed values
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- requantAlignedValues.py
