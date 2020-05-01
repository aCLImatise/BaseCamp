version 1.0

task Merlin {
  input {
    Boolean tabulateTabulate
  }
  command <<<
    merlin \
      ~{true="--tabulate" false="" tabulateTabulate}
  >>>
}