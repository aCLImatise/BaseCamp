version 1.0

task FermiCg2cofq {
  input {
    String? inInCgfQ
  }
  command <<<
    fermi cg2cofq \
      ~{inInCgfQ}
  >>>
}