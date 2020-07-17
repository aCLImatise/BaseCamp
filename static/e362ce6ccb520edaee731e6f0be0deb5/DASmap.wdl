version 1.0

task DASmap {
  input {
    Boolean? p
  }
  command <<<
    DASmap \
      ~{true="-p" false="" p}
  >>>
  parameter_meta {
    p: ""
  }
}