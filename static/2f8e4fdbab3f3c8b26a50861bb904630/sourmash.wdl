version 1.0

task Sourmash {
  input {
    Boolean quietQuiet
  }
  command <<<
    sourmash \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}