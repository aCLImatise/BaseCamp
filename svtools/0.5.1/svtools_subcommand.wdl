version 1.0

task SvtoolsSubcommand {
  input {
    Boolean? support
    String svtools
  }
  command <<<
    svtools subcommand \
      ~{svtools} \
      ~{if (support) then "--support" else ""}
  >>>
  parameter_meta {
    support: ""
    svtools: ""
  }
  output {
    File out_stdout = stdout()
  }
}