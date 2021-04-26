version 1.0

task MapulaMerge {
  input {
    Boolean? expected_counts_columns
    Boolean? sets_formats_results
    Boolean? prefix_there_are
    String map_ula
  }
  command <<<
    mapula merge \
      ~{map_ula} \
      ~{if (expected_counts_columns) then "-c" else ""} \
      ~{if (sets_formats_results) then "-f" else ""} \
      ~{if (prefix_there_are) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mapula:2.1.2--pyhdfd78af_0"
  }
  parameter_meta {
    expected_counts_columns: "Expected counts CSV. Required columns: reference,expected_count."
    sets_formats_results: "Sets the format(s) in which to output results. [Choices: csv,\\njson, all] (Default: csv)."
    prefix_there_are: "Prefix of the output files, if there are any."
    map_ula: ""
  }
  output {
    File out_stdout = stdout()
  }
}