version 1.0

task NtthalOligo {
  input {
    String? optionsOptions
    String? oligoOligo
  }
  command <<<
    ntthal oligo \
      ~{optionsOptions} \
      ~{oligoOligo}
  >>>
}