version 1.0

task Kcprototest {
  input {
    Boolean treeTree
    String thTh
    Boolean rndRnd
    Boolean etcEtc
    Boolean tranTran
    String? orderOrder
    String? rnumRnum
  }
  command <<<
    kcprototest \
      ~{orderOrder} \
      ~{true="-tree" false="" treeTree} \
      ~{if defined(thTh) then ("-th " +  '"' + thTh + '"') else ""} \
      ~{true="-rnd" false="" rndRnd} \
      ~{true="-etc" false="" etcEtc} \
      ~{true="-tran" false="" tranTran} \
      ~{rnumRnum}
  >>>
}