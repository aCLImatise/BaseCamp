version 1.0

task Epydocgui {
  input {
    Boolean debugDebug
  }
  command <<<
    epydocgui \
      ~{true="--debug" false="" debugDebug}
  >>>
}