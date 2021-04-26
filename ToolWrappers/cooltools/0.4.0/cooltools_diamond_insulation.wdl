version 1.0

task CooltoolsDiamondinsulation {
  input {
    String? window_pixels
    File? specify_output_name
    Int? ignore_diags
    Float? min_frac_valid_pixels
    Int? min_dist_bad_bin
    Boolean? append_raw_scores
    Boolean? verbose
    String in_path
    String window
  }
  command <<<
    cooltools diamond_insulation \
      ~{in_path} \
      ~{window} \
      ~{if defined(window_pixels) then ("--window-pixels " +  '"' + window_pixels + '"') else ""} \
      ~{if defined(specify_output_name) then ("--output " +  '"' + specify_output_name + '"') else ""} \
      ~{if defined(ignore_diags) then ("--ignore-diags " +  '"' + ignore_diags + '"') else ""} \
      ~{if defined(min_frac_valid_pixels) then ("--min-frac-valid-pixels " +  '"' + min_frac_valid_pixels + '"') else ""} \
      ~{if defined(min_dist_bad_bin) then ("--min-dist-bad-bin " +  '"' + min_dist_bad_bin + '"') else ""} \
      ~{if (append_raw_scores) then "--append-raw-scores" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0"
  }
  parameter_meta {
    window_pixels: "set, the window sizes must          be provided in"
    specify_output_name: "Specify output file name to store the\\ninsulation in a tsv format."
    ignore_diags: "The number of diagonals to ignore. By\\ndefault, equals the number of diagonals\\nignored during IC balancing."
    min_frac_valid_pixels: "The minimal fraction of valid pixels in a\\nsliding diamond. Used to mask bins during\\nboundary detection.  [default: 0.66]"
    min_dist_bad_bin: "The minimal allowed distance to a bad bin.\\nUsed to mask bins during boundary detection.\\n[default: 0]"
    append_raw_scores: "Append columns with raw scores (sum_counts,\\nsum_balanced, n_pixels) to the output table."
    verbose: "Report real-time progress."
    in_path: ""
    window: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_name = "${in_specify_output_name}"
  }
}