version 1.0

task _cpgplot {
  input {
    Boolean windowWindow
    Boolean minMinLen
    Boolean minMinOe
    Boolean minMinPc
  }
  command <<<
    _cpgplot \
      ~{true="-window" false="" windowWindow} \
      ~{true="-minlen" false="" minMinLen} \
      ~{true="-minoe" false="" minMinOe} \
      ~{true="-minpc" false="" minMinPc}
  >>>
}