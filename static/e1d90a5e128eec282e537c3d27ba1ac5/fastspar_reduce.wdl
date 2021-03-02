version 1.0

task FastsparReduce {
  input {
    File? correlation_table
    File? p_value_table
    File? output_prefix
    Float? correlation
    Float? p_value
    String reduce
  }
  command <<<
    fastspar_reduce \
      ~{reduce} \
      ~{if defined(correlation_table) then ("--correlation_table " +  '"' + correlation_table + '"') else ""} \
      ~{if defined(p_value_table) then ("--pvalue_table " +  '"' + p_value_table + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(correlation) then ("--correlation " +  '"' + correlation + '"') else ""} \
      ~{if defined(p_value) then ("--pvalue " +  '"' + p_value + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    correlation_table: "Correlation input table"
    p_value_table: "Number of bootstrap samples to generate"
    output_prefix: "Output prefix"
    correlation: "Absolute (sign is ignored) correlation threshold (default: 0.1)"
    p_value: "P-value threshold (default: 0.05)"
    reduce: ""
  }
  output {
    File out_stdout = stdout()
  }
}