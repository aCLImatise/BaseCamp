version 1.0

task Abyssfatoagp {
  command <<<
    abyss_fatoagp
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  output {
    File out_stdout = stdout()
  }
}