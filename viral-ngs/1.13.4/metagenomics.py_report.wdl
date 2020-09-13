version 1.0

task MetagenomicspyReport {
  input {
    String meta_genomics_do_tpy
    String subcommand
  }
  command <<<
    metagenomics_py report \
      ~{meta_genomics_do_tpy} \
      ~{subcommand}
  >>>
  parameter_meta {
    meta_genomics_do_tpy: ""
    subcommand: ""
  }
  output {
    File out_stdout = stdout()
  }
}