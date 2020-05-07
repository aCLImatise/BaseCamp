version 1.0

task Pheniqs {
  input {
    String? muxMux
  }
  command <<<
    pheniqs \
      ~{muxMux}
  >>>
}