version 1.0

task Ts {
  input {
    Boolean? r
  }
  command <<<
    ts \
      ~{true="-r" false="" r}
  >>>
  parameter_meta {
    r: ""
  }
}