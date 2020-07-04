version 1.0

task RgtViz {
  input {
    Boolean? v
  }
  command <<<
    rgt-viz \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}