version 1.0

task Tkpp {
  input {
    Boolean tkTk
    Boolean tkTk
    Boolean tkTk
    Boolean tkTk
    Boolean tkTk
  }
  command <<<
    tkpp \
      ~{true="- Tk" false="" tkTk} \
      ~{true="- Tk" false="" tkTk} \
      ~{true="- Tk" false="" tkTk} \
      ~{true="- Tk" false="" tkTk} \
      ~{true="- Tk" false="" tkTk}
  >>>
}