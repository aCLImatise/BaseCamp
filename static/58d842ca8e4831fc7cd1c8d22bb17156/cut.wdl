version 1.0

task Cut {
  input {
    Boolean zeroZeroTerminated
    Boolean mM
    String? nN
    String? nN
    String? nNM
  }
  command <<<
    cut \
      ~{nN} \
      ~{true="--zero-terminated" false="" zeroZeroTerminated} \
      ~{true="-M" false="" mM} \
      ~{nN} \
      ~{nNM}
  >>>
}