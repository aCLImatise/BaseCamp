version 1.0

task NetworkMerge {
  input {
    String? multiple_files_separated
    File? correlation_coefficient_default
  }
  command <<<
    network_merge \
      ~{if defined(multiple_files_separated) then ("--input " +  '"' + multiple_files_separated + '"') else ""} \
      ~{if defined(correlation_coefficient_default) then ("--output " +  '"' + correlation_coefficient_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gcen:0.5.1--hc9558a2_0"
  }
  parameter_meta {
    multiple_files_separated: "multiple files are separated by commas"
    correlation_coefficient_default: "correlation coefficient cutoff (default: 0.5)"
  }
  output {
    File out_stdout = stdout()
    File out_correlation_coefficient_default = "${in_correlation_coefficient_default}"
  }
}