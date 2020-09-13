version 1.0

task Bcbiornaseq {
  input {
    String? subcommand
  }
  command <<<
    bcbio_rnaseq \
      ~{subcommand}
  >>>
  parameter_meta {
    subcommand: ""
  }
  output {
    File out_stdout = stdout()
  }
}