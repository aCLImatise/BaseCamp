version 1.0

task Afetch {
  input {
    Boolean indexIndex
  }
  command <<<
    afetch \
      ~{true="--index" false="" indexIndex}
  >>>
}