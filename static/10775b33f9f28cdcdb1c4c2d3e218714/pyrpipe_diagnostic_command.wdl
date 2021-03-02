version 1.0

task PyrpipeDiagnosticCommand {
  input {
    String report
    String shell
    String subcommand_run_report
  }
  command <<<
    pyrpipe_diagnostic command \
      ~{report} \
      ~{shell} \
      ~{subcommand_run_report}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyrpipe:0.0.5--py_0"
  }
  parameter_meta {
    report: "Generate analysis report"
    shell: "Generate all commands to shell (bash) script"
    subcommand_run_report: "Subcommand to run report, shell,benchmark,multiqc,test"
  }
  output {
    File out_stdout = stdout()
  }
}