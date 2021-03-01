version 1.0

task DatafunkSnpFinder {
  input {
    String data_funk
    String subcommand
    String options
  }
  command <<<
    datafunk snp_finder \
      ~{data_funk} \
      ~{subcommand} \
      ~{options}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    data_funk: ""
    subcommand: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}