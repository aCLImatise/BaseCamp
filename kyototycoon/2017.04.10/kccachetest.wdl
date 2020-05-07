version 1.0

task Kccachetest {
  input {
    String thTh
    Boolean rndRnd
    Boolean etcEtc
    Boolean tranTran
    Boolean tcTc
    String bBNum
    String capCapCnt
    String capsCapsIz
    Boolean lvLv
    String? orderOrder
    String? rnumRnum
  }
  command <<<
    kccachetest \
      ~{orderOrder} \
      ~{if defined(thTh) then ("-th " +  '"' + thTh + '"') else ""} \
      ~{true="-rnd" false="" rndRnd} \
      ~{true="-etc" false="" etcEtc} \
      ~{true="-tran" false="" tranTran} \
      ~{true="-tc" false="" tcTc} \
      ~{if defined(bBNum) then ("-bnum " +  '"' + bBNum + '"') else ""} \
      ~{if defined(capCapCnt) then ("-capcnt " +  '"' + capCapCnt + '"') else ""} \
      ~{if defined(capsCapsIz) then ("-capsiz " +  '"' + capsCapsIz + '"') else ""} \
      ~{true="-lv" false="" lvLv} \
      ~{rnumRnum}
  >>>
}