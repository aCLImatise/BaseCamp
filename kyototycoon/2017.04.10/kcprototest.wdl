version 1.0

task Kcprototest {
  input {
    Boolean? tree
    String? th
    Boolean? rnd
    Boolean? etc
    Boolean? tran
    String order
    String rnum
  }
  command <<<
    kcprototest \
      ~{order} \
      ~{rnum} \
      ~{true="-tree" false="" tree} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{true="-rnd" false="" rnd} \
      ~{true="-etc" false="" etc} \
      ~{true="-tran" false="" tran}
  >>>
  parameter_meta {
    tree: ""
    th: ""
    rnd: ""
    etc: ""
    tran: ""
    order: ""
    rnum: ""
  }
}