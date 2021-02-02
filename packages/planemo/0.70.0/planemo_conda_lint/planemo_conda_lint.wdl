version 1.0

task PlanemoCondaLint {
  input {
    Boolean? report_level
    Boolean? fail_level
    Boolean? recursive
    String directories_dot
  }
  command <<<
    planemo conda_lint \
      ~{directories_dot} \
      ~{if (report_level) then "--report_level" else ""} \
      ~{if (fail_level) then "--fail_level" else ""} \
      ~{if (recursive) then "--recursive" else ""}
  >>>
  parameter_meta {
    report_level: "[all|warn|error]"
    fail_level: "[warn|error]"
    recursive: "Recursively perform command for nested conda"
    directories_dot: "--help                          Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}