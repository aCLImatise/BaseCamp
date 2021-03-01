version 1.0

task WiggleToSimplepy {
  command <<<
    wiggle_to_simple_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}