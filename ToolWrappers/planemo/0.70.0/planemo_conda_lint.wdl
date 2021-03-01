version 1.0

task PlanemoCondaLint {
  input {
    Boolean? recursive
    String directories_dot
  }
  command <<<
    planemo conda_lint \
      ~{directories_dot} \
      ~{if (recursive) then "--recursive" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    recursive: "Recursively perform command for nested conda"
    directories_dot: "--help                          Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}