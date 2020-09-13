version 1.0

task SnpEffAnnotatepy {
  command <<<
    snpEffAnnotate_py
  >>>
  output {
    File out_stdout = stdout()
  }
}