version 1.0

task CoordinateMapperpy {
  command <<<
    coordinate_mapper_py
  >>>
  output {
    File out_stdout = stdout()
  }
}