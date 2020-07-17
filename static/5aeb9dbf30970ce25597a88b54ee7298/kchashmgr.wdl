version 1.0

task Kchashmgr {
  input {
    Boolean? otr
    String create
  }
  command <<<
    kchashmgr \
      ~{create} \
      ~{true="-otr" false="" otr}
  >>>
  parameter_meta {
    otr: ""
    create: ""
  }
}