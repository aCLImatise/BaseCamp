version 1.0

task IntrahostpyAllele {
  input {
    String intra_host_do_tpy
    String subcommand
  }
  command <<<
    intrahost_py allele_ \
      ~{intra_host_do_tpy} \
      ~{subcommand}
  >>>
  parameter_meta {
    intra_host_do_tpy: ""
    subcommand: ""
  }
  output {
    File out_stdout = stdout()
  }
}