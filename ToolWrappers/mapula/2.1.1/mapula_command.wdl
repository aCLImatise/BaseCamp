version 1.0

task MapulaCommand {
  input {
    String count
    String merge
    String subcommand_to_run
  }
  command <<<
    mapula command \
      ~{count} \
      ~{merge} \
      ~{subcommand_to_run}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mapula:2.1.1--py_0"
  }
  parameter_meta {
    count: "Count mapping stats from a SAM/BAM file"
    merge: "Combine mapula count's aggregated json outputs"
    subcommand_to_run: "Subcommand to run"
  }
  output {
    File out_stdout = stdout()
  }
}