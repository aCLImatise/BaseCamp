version 1.0

task Newcpgreport {
  input {
    Boolean windowWindow
    Boolean shiftShift
    Boolean minMinLen
    Boolean minMinOe
    Boolean minMinPc
  }
  command <<<
    newcpgreport \
      ~{true="-window" false="" windowWindow} \
      ~{true="-shift" false="" shiftShift} \
      ~{true="-minlen" false="" minMinLen} \
      ~{true="-minoe" false="" minMinOe} \
      ~{true="-minpc" false="" minMinPc}
  >>>
}