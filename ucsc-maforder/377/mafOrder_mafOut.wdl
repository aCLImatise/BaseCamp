version 1.0

task MafOrderMafOut {
  input {
    String? mafMafIn
    String? orderOrderLst
    String? mafMafOut
  }
  command <<<
    mafOrder mafOut \
      ~{mafMafIn} \
      ~{orderOrderLst} \
      ~{mafMafOut}
  >>>
}