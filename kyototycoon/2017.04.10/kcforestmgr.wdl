version 1.0

task Kcforestmgr {
  input {
    Boolean? otr
    String create
  }
  command <<<
    kcforestmgr \
      ~{create} \
      ~{true="-otr" false="" otr}
  >>>
  parameter_meta {
    otr: ""
    create: ""
  }
}