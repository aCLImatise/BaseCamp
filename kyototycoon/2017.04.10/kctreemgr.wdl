version 1.0

task Kctreemgr {
  input {
    Boolean? otr
    String create
  }
  command <<<
    kctreemgr \
      ~{create} \
      ~{true="-otr" false="" otr}
  >>>
  parameter_meta {
    otr: ""
    create: ""
  }
}