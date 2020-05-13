version 1.0

task MedakaFastrle {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    String? inputInput
  }
  command <<<
    medaka fastrle \
      ~{inputInput} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}