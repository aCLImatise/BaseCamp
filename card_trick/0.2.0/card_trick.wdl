version 1.0

task CardTrick {
  input {
    Boolean manMan
  }
  command <<<
    card-trick \
      ~{true="--man" false="" manMan}
  >>>
}