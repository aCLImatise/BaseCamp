version 1.0

task Kttimedmgr {
  input {
    Boolean? otr
    String create
  }
  command <<<
    kttimedmgr \
      ~{create} \
      ~{true="-otr" false="" otr}
  >>>
  parameter_meta {
    otr: ""
    create: ""
  }
}