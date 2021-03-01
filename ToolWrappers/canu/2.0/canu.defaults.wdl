version 1.0

task Canudefaults {
  command <<<
    canu_defaults
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}