version 1.0

task ShapeMapperpy {
  command <<<
    ShapeMapper_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}