version 1.0

task Abyssfatoagp {
  command <<<
    abyss_fatoagp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}