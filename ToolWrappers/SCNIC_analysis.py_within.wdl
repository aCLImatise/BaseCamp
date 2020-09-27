version 1.0

task SCNICAnalysispyWithin {
  input {
    File? input_loc
    Directory? output_loc
    String? correl_method
    String? p_adjust
    Int? min_sample
    Int? procs
    Boolean? sparc_c_filter
    Int? sparc_c_p
    Boolean? verbose
  }
  command <<<
    SCNIC_analysis_py within \
      ~{if defined(input_loc) then ("--input_loc " +  '"' + input_loc + '"') else ""} \
      ~{if defined(output_loc) then ("--output_loc " +  '"' + output_loc + '"') else ""} \
      ~{if defined(correl_method) then ("--correl_method " +  '"' + correl_method + '"') else ""} \
      ~{if defined(p_adjust) then ("--p_adjust " +  '"' + p_adjust + '"') else ""} \
      ~{if defined(min_sample) then ("--min_sample " +  '"' + min_sample + '"') else ""} \
      ~{if defined(procs) then ("--procs " +  '"' + procs + '"') else ""} \
      ~{if (sparc_c_filter) then "--sparcc_filter" else ""} \
      ~{if defined(sparc_c_p) then ("--sparcc_p " +  '"' + sparc_c_p + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_loc: "location of input biom file (default: None)"
    output_loc: "output directory (default: None)"
    correl_method: "correlation method (default: sparcc)"
    p_adjust: "p-value adjustment (default: fdr_bh)"
    min_sample: "minimum number of samples present in (default: None)"
    procs: "number of processors to use (default: 1)"
    sparc_c_filter: "filter as described in SparCC paper (default: False)"
    sparc_c_p: "Calculate p-value for sparCC R value, give number of\\nbootstraps (default: None)"
    verbose: "give verbose messages to STDOUT (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_loc = "${in_output_loc}"
  }
}