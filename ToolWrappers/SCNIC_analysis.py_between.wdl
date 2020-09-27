version 1.0

task SCNICAnalysispyBetween {
  input {
    Int? table_one
    Int? table_two
    File? output_loc
    String? correl_method
    String? p_adjust
    Int? min_sample
    String? max_p
    Int? min_r
    Boolean? sparc_c_filter
    Int? procs
    Directory? force
  }
  command <<<
    SCNIC_analysis_py between \
      ~{if defined(table_one) then ("--table1 " +  '"' + table_one + '"') else ""} \
      ~{if defined(table_two) then ("--table2 " +  '"' + table_two + '"') else ""} \
      ~{if defined(output_loc) then ("--output_loc " +  '"' + output_loc + '"') else ""} \
      ~{if defined(correl_method) then ("--correl_method " +  '"' + correl_method + '"') else ""} \
      ~{if defined(p_adjust) then ("--p_adjust " +  '"' + p_adjust + '"') else ""} \
      ~{if defined(min_sample) then ("--min_sample " +  '"' + min_sample + '"') else ""} \
      ~{if defined(max_p) then ("--max_p " +  '"' + max_p + '"') else ""} \
      ~{if defined(min_r) then ("--min_r " +  '"' + min_r + '"') else ""} \
      ~{if (sparc_c_filter) then "--sparcc_filter" else ""} \
      ~{if defined(procs) then ("--procs " +  '"' + procs + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    table_one: "table to be correlated (default: None)"
    table_two: "second table to be correlated (default: None)"
    output_loc: "output file location (default: None)"
    correl_method: "correlation method (default: spearman)"
    p_adjust: "p-value adjustment (default: fdr_bh)"
    min_sample: "minimum number of samples present in (default: None)"
    max_p: "minimum p-value to determine edges (default: None)"
    min_r: "minimum R to determine edges (default: None)"
    sparc_c_filter: "filter using parameters from SparCC publication\\n(default: False)"
    procs: "number of processors to use (default: 1)"
    force: "force overwrite output folder if it already exists\\n(default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_loc = "${in_output_loc}"
    Directory out_force = "${in_force}"
  }
}