version 1.0

task RequantAlignedValuespy {
  input {
    Array[String] in
    File? peak_groups_in_file
    File? out
    File? file_format
    String? out_matrix
    String? matrix_output_method
    Int? border_option
    Boolean? dry_run
    Boolean? test
    Boolean? cache_in_memory
    String? method
    File? realign_runs
    Boolean? disable_isotopic_grouping
    Boolean? disable_isotopic_transfer
    String verbosity
  }
  command <<<
    requantAlignedValues_py \
      ~{verbosity} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(peak_groups_in_file) then ("--peakgroups_infile " +  '"' + peak_groups_in_file + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(file_format) then ("--file_format " +  '"' + file_format + '"') else ""} \
      ~{if defined(out_matrix) then ("--out_matrix " +  '"' + out_matrix + '"') else ""} \
      ~{if defined(matrix_output_method) then ("--matrix_output_method " +  '"' + matrix_output_method + '"') else ""} \
      ~{if defined(border_option) then ("--border_option " +  '"' + border_option + '"') else ""} \
      ~{if (dry_run) then "--dry_run" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (cache_in_memory) then "--cache_in_memory" else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(realign_runs) then ("--realign_runs " +  '"' + realign_runs + '"') else ""} \
      ~{if (disable_isotopic_grouping) then "--disable_isotopic_grouping" else ""} \
      ~{if (disable_isotopic_transfer) then "--disable_isotopic_transfer" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "A list of transformation files in the same folder as\\nthe .chrom.mzML files"
    peak_groups_in_file: "Infile containing peakgroups (outfile from\\nfeature_alignment.py)"
    out: "Output file with imputed values"
    file_format: "Which input file format is used (openswath, mprophet\\nor peakview)"
    out_matrix: "Matrix containing one peak group per row (supports\\n.csv, .tsv or .xls)"
    matrix_output_method: "Which columns are written besides Intensity (none, RT,\\nscore, source or full)"
    border_option: "How to determine integration border (possible values:\\nmax_width, mean, median). Max width will use the\\nmaximal possible width (most conservative since it\\nwill overestimate the background signal)."
    dry_run: "Perform a dry run only"
    test: "For running the tests (does not add a random id to the\\nresults)"
    cache_in_memory: "Cache data from a single run in memory"
    method: "Which method to use (singleShortestPath,\\nsingleClosestRun, reference)"
    realign_runs: "How to re-align runs in retention time ('diRT': use\\nonly deltaiRT from the input file, 'linear': perform a\\nlinear regression using best peakgroups, 'splineR':\\nperform a spline fit using R, 'splineR_external':\\nperform a spline fit using R (start an R process using\\nthe command line), 'splinePy' use Python native spline\\nfrom scikits.datasmooth (slow!), 'lowess': use Robust\\nlocally weighted regression (lowess smoother),\\n'nonCVSpline, CVSpline': splines with and without\\ncross-validation, 'Earth' : use Multivariate Adaptive\\nRegression Splines using py-earth"
    disable_isotopic_grouping: "Disable grouping of isotopic variants by\\npeptide_group_label, thus disabling matching of\\nisotopic variants of the same peptide across channels.\\nIf turned off, each isotopic channel will be matched\\nindependently of the other. If enabled, the more\\ncertain identification will be used to infer the\\nlocation of the peak in the other channel."
    disable_isotopic_transfer: "Disable the transfer of isotopic boundaries in all\\ncases. If enabled (default), the best (best score)\\nisotopic channel dictates the peak boundaries and all\\nother channels use those boundaries. This ensures\\nconsistency in peak picking in all cases.\\n"
    verbosity: "--do_single_run       Only do a single run"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}