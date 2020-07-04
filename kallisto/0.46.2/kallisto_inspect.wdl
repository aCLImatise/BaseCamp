version 1.0

task KallistoInspect {
  input {
    String index_file
  }
  command <<<
    kallisto inspect \
      ~{index_file}
  >>>
  parameter_meta {
    index_file: ""
  }
}