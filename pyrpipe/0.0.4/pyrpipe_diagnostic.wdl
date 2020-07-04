version 1.0

task PyrpipeDiagnostic.pyLogfile {
  input {
    String subcommand_to_run
  }
  command <<<
    pyrpipe_diagnostic.py logfile \
      ~{subcommand_to_run}
  >>>
  parameter_meta {
    subcommand_to_run: "Subcommand to run [report,bash,benchmark,all]"
  }
}