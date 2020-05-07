version 1.0

task EslMixdchletFit {
  input {
    Boolean optionsOptions
    String? qQ
    String? kK
    String? inInCountFile
    String? outOutMixDchLet
  }
  command <<<
    esl-mixdchlet fit \
      ~{qQ} \
      ~{true="-options" false="" optionsOptions} \
      ~{kK} \
      ~{inInCountFile} \
      ~{outOutMixDchLet}
  >>>
}