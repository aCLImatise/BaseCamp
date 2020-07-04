version 1.0

task Kcpolymgr {
  input {
    Boolean? otr
    String create
  }
  command <<<
    kcpolymgr \
      ~{create} \
      ~{true="-otr" false="" otr}
  >>>
  parameter_meta {
    otr: ""
    create: ""
  }
}