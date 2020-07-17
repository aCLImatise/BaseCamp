version 1.0

task N50 {
  input {
    String full
    String manual
  }
  command <<<
    n50 \
      ~{full} \
      ~{manual}
  >>>
  parameter_meta {
    full: ""
    manual: ""
  }
}