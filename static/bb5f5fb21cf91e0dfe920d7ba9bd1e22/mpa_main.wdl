version 1.0

task MpaMain {
  command <<<
    mpa_main
  >>>
  runtime {
    docker: "quay.io/biocontainers/mobidic-mpa:1.2.1--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}