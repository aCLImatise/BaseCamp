version 1.0

task MafOrderOrder.lst {
  input {
    String? mafMafIn
    String? orderOrderLst
    String? mafMafOut
  }
  command <<<
    mafOrder order.lst \
      ~{mafMafIn} \
      ~{orderOrderLst} \
      ~{mafMafOut}
  >>>
}