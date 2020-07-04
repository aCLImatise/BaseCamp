version 1.0

task SfsCode {
  input {
    String n_pop
    String iterations
  }
  command <<<
    sfs_code \
      ~{n_pop} \
      ~{iterations}
  >>>
  parameter_meta {
    n_pop: ""
    iterations: ""
  }
}