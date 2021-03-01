version 1.0

task CartHess2FCpy {
  command <<<
    CartHess2FC_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}