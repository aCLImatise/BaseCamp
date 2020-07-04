version 1.0

task RequantAlignedValues.py {
  input {
    Array[String] in
    String? peak_groups_in_file
    String? out
    File? file_format
    String? out_matrix
    String? matrix_output_method
    String? border_option
    Boolean? dry_run
    Boolean? test
    Boolean? cache_in_memory
    String? method
    String? realign_runs
    String? verbosity
    Boolean? do_single_run
    Boolean? disable_isotopic_grouping
    Boolean? disable_isotopic_transfer
  }
  command <<<
    requantAlignedValues.py \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(peak_groups_in_file) then ("--peakgroups_infile " +  '"' + peak_groups_in_file + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(file_format) then ("--file_format " +  '"' + file_format + '"') else ""} \
      ~{if defined(out_matrix) then ("--out_matrix " +  '"' + out_matrix + '"') else ""} \
      ~{if defined(matrix_output_method) then ("--matrix_output_method " +  '"' + matrix_output_method + '"') else ""} \
      ~{if defined(border_option) then ("--border_option " +  '"' + border_option + '"') else ""} \
      ~{true="--dry_run" false="" dry_run} \
      ~{true="--test" false="" test} \
      ~{true="--cache_in_memory" false="" cache_in_memory} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(realign_runs) then ("--realign_runs " +  '"' + realign_runs + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="--do_single_run" false="" do_single_run} \
      ~{true="--disable_isotopic_grouping" false="" disable_isotopic_grouping} \
      ~{true="--disable_isotopic_transfer" false="" disable_isotopic_transfer}
  >>>
  parameter_meta {
    in: "A list of transformation files in the same folder as the .chrom.mzML files"
    peak_groups_in_file: "Infile containing peakgroups (outfile from feature_alignment.py)"
    out: "Output file with imputed values"
    file_format: "Which input file format is used (openswath, mprophet or peakview)"
    out_matrix: "Matrix containing one peak group per row (supports .csv, .tsv or .xls)"
    matrix_output_method: "Which columns are written besides Intensity (none, RT, score, source or full)"
    border_option: "How to determine integration border (possible values: max_width, mean, median). Max width will use the maximal possible width (most conservative since it will overestimate the background signal)."
    dry_run: "Perform a dry run only"
    test: "For running the tests (does not add a random id to the results)"
    cache_in_memory: "Cache data from a single run in memory"
    method: "Which method to use (singleShortestPath, singleClosestRun, reference)"
    realign_runs: "How to re-align runs in retention time ('diRT': use only deltaiRT from the input file, 'linear': perform a linear regression using best peakgroups, 'splineR': perform a spline fit using R, 'splineR_external': perform a spline fit using R (start an R process using the command line), 'splinePy' use Python native spline from scikits.datasmooth (slow!), 'lowess': use Robust locally weighted regression (lowess smoother), 'nonCVSpline, CVSpline': splines with and without cross-validation, 'Earth' : use Multivariate Adaptive Regression Splines using py-earth"
    verbosity: "Verbosity"
    do_single_run: "Only do a single run"
    disable_isotopic_grouping: "Disable grouping of isotopic variants by peptide_group_label, thus disabling matching of isotopic variants of the same peptide across channels. If turned off, each isotopic channel will be matched independently of the other. If enabled, the more certain identification will be used to infer the location of the peak in the other channel."
    disable_isotopic_transfer: "Disable the transfer of isotopic boundaries in all cases. If enabled (default), the best (best score) isotopic channel dictates the peak boundaries and all other channels use those boundaries. This ensures consistency in peak picking in all cases."
  }
}