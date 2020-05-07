version 1.0

task Cpgplot {
  input {
    Boolean windowWindow
    Boolean minMinLen
    Boolean minMinOe
    Boolean minMinPc
  }
  command <<<
    cpgplot \
      ~{true="-window" false="" windowWindow} \
      ~{true="-minlen" false="" minMinLen} \
      ~{true="-minoe" false="" minMinOe} \
      ~{true="-minpc" false="" minMinPc}
  >>>
}