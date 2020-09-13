version 1.0

task ShapeMapperpy {
  command <<<
    ShapeMapper_py
  >>>
  output {
    File out_stdout = stdout()
  }
}