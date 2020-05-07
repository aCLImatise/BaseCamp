version 1.0

task MafOrderMafInOrder.lst {
  input {
    String? mafMafOut
  }
  command <<<
    mafOrder mafIn order.lst \
      ~{mafMafOut}
  >>>
}