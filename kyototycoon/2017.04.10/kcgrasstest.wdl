version 1.0

task Kcgrasstest {
  input {
    String? th
    Boolean? rnd
    Boolean? etc
    Boolean? tran
    Boolean? tc
    String? b_num
    String? psi_z
    String? pc_cap
    String order
  }
  command <<<
    kcgrasstest \
      ~{order} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{true="-rnd" false="" rnd} \
      ~{true="-etc" false="" etc} \
      ~{true="-tran" false="" tran} \
      ~{true="-tc" false="" tc} \
      ~{if defined(b_num) then ("-bnum " +  '"' + b_num + '"') else ""} \
      ~{if defined(psi_z) then ("-psiz " +  '"' + psi_z + '"') else ""} \
      ~{if defined(pc_cap) then ("-pccap " +  '"' + pc_cap + '"') else ""}
  >>>
  parameter_meta {
    th: ""
    rnd: ""
    etc: ""
    tran: ""
    tc: ""
    b_num: ""
    psi_z: ""
    pc_cap: ""
    order: ""
  }
}