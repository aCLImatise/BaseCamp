version 1.0

task Mageck {
  input {
    Boolean? v
  }
  command <<<
    mageck \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}