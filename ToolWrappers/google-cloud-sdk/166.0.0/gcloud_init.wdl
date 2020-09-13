version 1.0

task GcloudInit {
  input {
    Boolean? console_only
    Boolean? skip_diagnostics
  }
  command <<<
    gcloud init \
      ~{if (console_only) then "--console-only" else ""} \
      ~{if (skip_diagnostics) then "--skip-diagnostics" else ""}
  >>>
  parameter_meta {
    console_only: "Prevent the command from launching a browser for authorization."
    skip_diagnostics: "Do not run diagnostics."
  }
  output {
    File out_stdout = stdout()
  }
}