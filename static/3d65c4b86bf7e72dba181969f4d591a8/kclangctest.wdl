version 1.0

task Kclangctest {
  input {
    Boolean? rnd
    Boolean? etc
    Boolean? tran
    String order
  }
  command <<<
    kclangctest \
      ~{order} \
      ~{true="-rnd" false="" rnd} \
      ~{true="-etc" false="" etc} \
      ~{true="-tran" false="" tran}
  >>>
  parameter_meta {
    rnd: ""
    etc: ""
    tran: ""
    order: ""
  }
}