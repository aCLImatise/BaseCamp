version 1.0

task Mscat {
  input {
    File filename
  }
  command <<<
    mscat \
      ~{filename}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}