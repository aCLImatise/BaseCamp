version 1.0

task Kcstashtest {
  input {
    String thTh
    Boolean rndRnd
    Boolean etcEtc
    Boolean tranTran
    String bBNum
    Boolean lvLv
    String? orderOrder
    String? rnumRnum
  }
  command <<<
    kcstashtest \
      ~{orderOrder} \
      ~{if defined(thTh) then ("-th " +  '"' + thTh + '"') else ""} \
      ~{true="-rnd" false="" rndRnd} \
      ~{true="-etc" false="" etcEtc} \
      ~{true="-tran" false="" tranTran} \
      ~{if defined(bBNum) then ("-bnum " +  '"' + bBNum + '"') else ""} \
      ~{true="-lv" false="" lvLv} \
      ~{rnumRnum}
  >>>
}