version 1.0

task Abyssfatoagp {
  command <<<
    abyss_fatoagp
  >>>
  output {
    File out_stdout = stdout()
  }
}