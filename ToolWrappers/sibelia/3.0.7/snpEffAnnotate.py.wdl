version 1.0

task SnpEffAnnotatepy {
  command <<<
    snpEffAnnotate_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}