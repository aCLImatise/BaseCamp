version 1.0

task Kccachetest {
  input {
    String? th
    Boolean? rnd
    Boolean? etc
    Boolean? tran
    Boolean? tc
    String? b_num
    String? cap_cnt
    String? caps_iz
    Boolean? lv
    String order
    String rnum
  }
  command <<<
    kccachetest \
      ~{order} \
      ~{rnum} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{true="-rnd" false="" rnd} \
      ~{true="-etc" false="" etc} \
      ~{true="-tran" false="" tran} \
      ~{true="-tc" false="" tc} \
      ~{if defined(b_num) then ("-bnum " +  '"' + b_num + '"') else ""} \
      ~{if defined(cap_cnt) then ("-capcnt " +  '"' + cap_cnt + '"') else ""} \
      ~{if defined(caps_iz) then ("-capsiz " +  '"' + caps_iz + '"') else ""} \
      ~{true="-lv" false="" lv}
  >>>
  parameter_meta {
    th: ""
    rnd: ""
    etc: ""
    tran: ""
    tc: ""
    b_num: ""
    cap_cnt: ""
    caps_iz: ""
    lv: ""
    order: ""
    rnum: ""
  }
}