version 1.0

task MakeUnique {
  command <<<
    make_unique
  >>>
  runtime {
    docker: "quay.io/biocontainers/ptools_bin:0.0.5--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}