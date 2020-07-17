version 1.0

task FastsparReduce {
  input {
    File? r_slash_correlation_table
    File? p_slash_p_value_table
    File? oslash_output_prefix
    Float? t_slash_correlation
    Float? lslash_p_value
    Boolean? _version_display
    File? correlation_table
    File? p_value_table
    File? correlation
    Float? p_value
    String? output_prefix
    String reduce
  }
  command <<<
    fastspar_reduce \
      ~{reduce} \
      ~{if defined(r_slash_correlation_table) then ("-r/--correlation_table " +  '"' + r_slash_correlation_table + '"') else ""} \
      ~{if defined(p_slash_p_value_table) then ("-p/--pvalue_table " +  '"' + p_slash_p_value_table + '"') else ""} \
      ~{if defined(oslash_output_prefix) then ("-o/--output_prefix " +  '"' + oslash_output_prefix + '"') else ""} \
      ~{if defined(t_slash_correlation) then ("-t/--correlation " +  '"' + t_slash_correlation + '"') else ""} \
      ~{if defined(lslash_p_value) then ("-l/--pvalue " +  '"' + lslash_p_value + '"') else ""} \
      ~{true="-v" false="" _version_display} \
      ~{if defined(correlation_table) then ("--correlation_table " +  '"' + correlation_table + '"') else ""} \
      ~{if defined(p_value_table) then ("--pvalue_table " +  '"' + p_value_table + '"') else ""} \
      ~{if defined(correlation) then ("--correlation " +  '"' + correlation + '"') else ""} \
      ~{if defined(p_value) then ("--pvalue " +  '"' + p_value + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  parameter_meta {
    r_slash_correlation_table: "Correlation input table"
    p_slash_p_value_table: "Number of bootstrap samples to generate"
    oslash_output_prefix: "Output prefix"
    t_slash_correlation: "Absolute (sign is ignored) correlation threshold (default: 0.1)"
    lslash_p_value: "P-value threshold (default: 0.05)"
    _version_display: "--version Display version information and exit"
    correlation_table: ""
    p_value_table: ""
    correlation: ""
    p_value: ""
    output_prefix: ""
    reduce: ""
  }
}