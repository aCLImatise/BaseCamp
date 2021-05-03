version 1.0

task Abysstabtomd {
  command <<<
    abyss_tabtomd
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  output {
    File out_stdout = stdout()
  }
}