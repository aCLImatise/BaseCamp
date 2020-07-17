version 1.0

task Kcstashtest {
  input {
    String? th
    Boolean? rnd
    Boolean? etc
    Boolean? tran
    String? b_num
    Boolean? lv
    String order
    String rnum
  }
  command <<<
    kcstashtest \
      ~{order} \
      ~{rnum} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{true="-rnd" false="" rnd} \
      ~{true="-etc" false="" etc} \
      ~{true="-tran" false="" tran} \
      ~{if defined(b_num) then ("-bnum " +  '"' + b_num + '"') else ""} \
      ~{true="-lv" false="" lv}
  >>>
  parameter_meta {
    th: ""
    rnd: ""
    etc: ""
    tran: ""
    b_num: ""
    lv: ""
    order: ""
    rnum: ""
  }
}