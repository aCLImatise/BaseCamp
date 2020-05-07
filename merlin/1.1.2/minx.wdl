version 1.0

task Minx {
  input {
    Boolean tabulateTabulate
  }
  command <<<
    minx \
      ~{true="--tabulate" false="" tabulateTabulate}
  >>>
}