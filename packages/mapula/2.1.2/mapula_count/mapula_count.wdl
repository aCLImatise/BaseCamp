version 1.0

task MapulaCount {
  input {
    Boolean? _reference_files
    Boolean? expected_counts_columns
    Boolean? enable_relay_stdout
    Boolean? aggregating_output_results
    Boolean? change_aggregation_behaviour
    Boolean? prefix_there_are
    String map_ula
  }
  command <<<
    mapula count \
      ~{map_ula} \
      ~{if (_reference_files) then "-r" else ""} \
      ~{if (expected_counts_columns) then "-c" else ""} \
      ~{if (enable_relay_stdout) then "-p" else ""} \
      ~{if (aggregating_output_results) then "-f" else ""} \
      ~{if (change_aggregation_behaviour) then "-s" else ""} \
      ~{if (prefix_there_are) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mapula:2.1.2--pyhdfd78af_0"
  }
  parameter_meta {
    _reference_files: "[ ...]   Reference .fasta file(s)."
    expected_counts_columns: "Expected counts CSV. Required columns: reference,expected_count."
    enable_relay_stdout: "Enable relay of input SAM records to stdout."
    aggregating_output_results: "If aggregating [-a], output results in this format. [Choices:\\ncsv, json, all] (Default: csv)."
    change_aggregation_behaviour: "[ ...]  Change aggregation behaviour to split by these criteria, space\\nseparated. [Choices: source fasta run_id barcode read_group\\nreference] (Default: all)."
    prefix_there_are: "Prefix of the output files, if there are any."
    map_ula: ""
  }
  output {
    File out_stdout = stdout()
  }
}