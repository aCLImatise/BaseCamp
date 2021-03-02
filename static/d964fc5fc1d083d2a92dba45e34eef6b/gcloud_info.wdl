version 1.0

task GcloudInfo {
  input {
    Boolean? anonymize
    Boolean? run_diagnostics
    Boolean? show_log
    String connectivity_dot
    File file_dot
  }
  command <<<
    gcloud info \
      ~{connectivity_dot} \
      ~{file_dot} \
      ~{if (anonymize) then "--anonymize" else ""} \
      ~{if (run_diagnostics) then "--run-diagnostics" else ""} \
      ~{if (show_log) then "--show-log" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    anonymize: "Minimize any personal identifiable information. Use it when sharing\\noutput with others."
    run_diagnostics: "Run diagnostics on your installation of the Cloud SDK."
    show_log: "Print the contents of the last log file."
    connectivity_dot: "o gcloud info --show-log prints the contents of the most recent log"
    file_dot: "FLAGS"
  }
  output {
    File out_stdout = stdout()
  }
}