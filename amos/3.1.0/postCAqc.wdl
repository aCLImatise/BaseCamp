version 1.0

task PostCAqc {
  input {
    Boolean iI
  }
  command <<<
    postCAqc \
      ~{true="-i" false="" iI}
  >>>
}