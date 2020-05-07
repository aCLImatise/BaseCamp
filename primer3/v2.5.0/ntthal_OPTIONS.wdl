version 1.0

task NtthalOPTIONS {
  input {
    String? oligoOligo
  }
  command <<<
    ntthal OPTIONS \
      ~{oligoOligo}
  >>>
}