version 1.0

task WindowAcgt {
  input {
    String? windowWindowStart
  }
  command <<<
    window-acgt \
      ~{windowWindowStart}
  >>>
}