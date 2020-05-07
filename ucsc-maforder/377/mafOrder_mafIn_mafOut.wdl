version 1.0

task MafOrderMafInMafOut {
  input {
    String? orderOrderLst
    String? mafMafOut
  }
  command <<<
    mafOrder mafIn mafOut \
      ~{orderOrderLst} \
      ~{mafMafOut}
  >>>
}