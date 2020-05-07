version 1.0

task Oligotm {
  input {
    String? optionsOptions
    String? oligoOligo
  }
  command <<<
    oligotm \
      ~{optionsOptions} \
      ~{oligoOligo}
  >>>
}