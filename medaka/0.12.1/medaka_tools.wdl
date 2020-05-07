version 1.0

task MedakaTools {
  input {
    Boolean debugDebug
    Boolean quietQuiet
  }
  command <<<
    medaka tools \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}