version 1.0

task DbLoad {
  input {
    Boolean? ntv
  }
  command <<<
    db_load \
      ~{true="-nTV" false="" ntv}
  >>>
  parameter_meta {
    ntv: ""
  }
}