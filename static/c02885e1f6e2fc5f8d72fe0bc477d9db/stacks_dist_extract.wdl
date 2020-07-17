version 1.0

task StacksDistExtract {
  input {
    String dist_file
  }
  command <<<
    stacks-dist-extract \
      ~{dist_file}
  >>>
  parameter_meta {
    dist_file: ""
  }
}