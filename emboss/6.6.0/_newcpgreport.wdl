version 1.0

task _newcpgreport {
  input {
    Boolean windowWindow
    Boolean shiftShift
    Boolean minMinLen
    Boolean minMinOe
    Boolean minMinPc
  }
  command <<<
    _newcpgreport \
      ~{true="-window" false="" windowWindow} \
      ~{true="-shift" false="" shiftShift} \
      ~{true="-minlen" false="" minMinLen} \
      ~{true="-minoe" false="" minMinOe} \
      ~{true="-minpc" false="" minMinPc}
  >>>
}