version 1.0

task Kcdirmgr {
  input {
    Boolean? otr
    String create
  }
  command <<<
    kcdirmgr \
      ~{create} \
      ~{true="-otr" false="" otr}
  >>>
  parameter_meta {
    otr: ""
    create: ""
  }
}