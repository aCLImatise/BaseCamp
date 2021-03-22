version 1.0

task MapulaCount {
  input {
    Boolean? expected_counts_csv
    Boolean? enable_relay_stdout
    Boolean? aggregating_output_results
    Boolean? change_aggregation_behaviour
    Boolean? prefix_there_are
    Boolean? r
    String map_ula
  }
  command <<<
    mapula count \
      ~{map_ula} \
      ~{if (expected_counts_csv) then "-c" else ""} \
      ~{if (enable_relay_stdout) then "-p" else ""} \
      ~{if (aggregating_output_results) then "-f" else ""} \
      ~{if (change_aggregation_behaviour) then "-s" else ""} \
      ~{if (prefix_there_are) then "-n" else ""} \
      ~{if (r) then "-r" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mapula:2.1.1--py_0"
  }
  parameter_meta {
    expected_counts_csv: "Expected counts CSV. Required columns:\\nreference,expected_count."
    enable_relay_stdout: "Enable relay of input SAM records to stdout."
    aggregating_output_results: "If aggregating [-a], output results in this format. [Choices:\\ncsv, json, all] (Default: csv)."
    change_aggregation_behaviour: "[ ...]    Change aggregation behaviour to split by these criteria, space\\nseparated. [Choices: source fasta run_id barcode read_group\\nreference] (Default: all)."
    prefix_there_are: "Prefix of the output files, if there are any."
    r: ""
    map_ula: ""
  }
  output {
    File out_stdout = stdout()
  }
}