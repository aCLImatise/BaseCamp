version 1.0

task FastsparPvalues {
  input {
    File? c_slash_otu_table
    File? r_slash_correlation
    String? p_slash_prefix
    Int? n_slash_permutations
    File? oslash_outfile
    Boolean? s_slash_pseudo
    Int? t_slash_threads
    Boolean? _versiondisplay_version
    Int? permutations
    String? prefix
    File? correlation
    File? otu_table
  }
  command <<<
    fastspar_pvalues \
      ~{if defined(c_slash_otu_table) then ("-c/--otu_table " +  '"' + c_slash_otu_table + '"') else ""} \
      ~{if defined(r_slash_correlation) then ("-r/--correlation " +  '"' + r_slash_correlation + '"') else ""} \
      ~{if defined(p_slash_prefix) then ("-p/--prefix " +  '"' + p_slash_prefix + '"') else ""} \
      ~{if defined(n_slash_permutations) then ("-n/--permutations " +  '"' + n_slash_permutations + '"') else ""} \
      ~{if defined(oslash_outfile) then ("-o/--outfile " +  '"' + oslash_outfile + '"') else ""} \
      ~{if (s_slash_pseudo) then "-s/--pseudo" else ""} \
      ~{if defined(t_slash_threads) then ("-t/--threads " +  '"' + t_slash_threads + '"') else ""} \
      ~{if (_versiondisplay_version) then "-v" else ""} \
      ~{if defined(permutations) then ("--permutations " +  '"' + permutations + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(correlation) then ("--correlation " +  '"' + correlation + '"') else ""} \
      ~{if defined(otu_table) then ("--otu_table " +  '"' + otu_table + '"') else ""}
  >>>
  parameter_meta {
    c_slash_otu_table: "OTU input table used to generated correlations"
    r_slash_correlation: "Correlation table generated by FastSpar"
    p_slash_prefix: "Prefix output of bootstrap output files"
    n_slash_permutations: "Number of permutations/ bootstraps"
    oslash_outfile: "Output p-value matrix filename"
    s_slash_pseudo: "Calculate pseudo p-values rather than exact p-values (default: false)"
    t_slash_threads: "Number of threads (default: 1)"
    _versiondisplay_version: "--version\\nDisplay version information and exit\\n"
    permutations: ""
    prefix: ""
    correlation: ""
    otu_table: ""
  }
  output {
    File out_stdout = stdout()
    File out_oslash_outfile = "${in_oslash_outfile}"
  }
}