version 1.0

task UnitemGreedy {
  input {
    Boolean? bin_dirs
    File? bin_file
    Int? weight
    Int? sel_min_quality
    Int? sel_min_comp
    Int? sel_max_cont
    Int? report_min_quality
    Boolean? simple_headers
    String? bin_prefix
    Boolean? silent
    String profile_dir
    String output_dir
  }
  command <<<
    unitem greedy \
      ~{profile_dir} \
      ~{output_dir} \
      ~{if (bin_dirs) then "--bin_dirs" else ""} \
      ~{if defined(bin_file) then ("--bin_file " +  '"' + bin_file + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(sel_min_quality) then ("--sel_min_quality " +  '"' + sel_min_quality + '"') else ""} \
      ~{if defined(sel_min_comp) then ("--sel_min_comp " +  '"' + sel_min_comp + '"') else ""} \
      ~{if defined(sel_max_cont) then ("--sel_max_cont " +  '"' + sel_max_cont + '"') else ""} \
      ~{if defined(report_min_quality) then ("--report_min_quality " +  '"' + report_min_quality + '"') else ""} \
      ~{if (simple_headers) then "--simple_headers" else ""} \
      ~{if defined(bin_prefix) then ("--bin_prefix " +  '"' + bin_prefix + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/unitem:0.0.18--py_0"
  }
  parameter_meta {
    bin_dirs: "[BIN_DIRS [BIN_DIRS ...]]\\ndirectories with bins from different binning methods"
    bin_file: "tab-separated file indicating directories with bins\\nfrom binning methods (two columns: method name and\\ndirectory)"
    weight: "weight given to contamination for assessing genome\\nqualitys (default: 2)"
    sel_min_quality: "minimum quality of bin to consider during bin\\nselection process (default: 50)"
    sel_min_comp: "minimum completeness of bin to consider during bin\\nselection process (default: 50)"
    sel_max_cont: "maximum contamination of bin to consider during bin\\nselection process (default: 10)"
    report_min_quality: "minimum quality of bin to report (default: 10)"
    simple_headers: "do not added additional information to FASTA headers"
    bin_prefix: "prefix for output bins (default: bin)"
    silent: "suppress output of logger"
    profile_dir: "directory with bin profiles (output of 'profile'\\ncommand)"
    output_dir: "output directory"
  }
  output {
    File out_stdout = stdout()
  }
}