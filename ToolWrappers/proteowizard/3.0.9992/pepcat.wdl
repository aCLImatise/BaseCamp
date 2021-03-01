version 1.0

task Pepcat {
  command <<<
    pepcat
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  output {
    File out_stdout = stdout()
  }
}