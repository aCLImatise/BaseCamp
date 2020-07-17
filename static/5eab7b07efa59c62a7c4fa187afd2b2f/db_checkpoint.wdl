version 1.0

task DbCheckpoint {
  input {
    Boolean? one_vv
  }
  command <<<
    db_checkpoint \
      ~{true="-1Vv" false="" one_vv}
  >>>
  parameter_meta {
    one_vv: ""
  }
}