version 1.0

task Tn93 {
  input {
    Boolean qQ
    String? fastFastA
  }
  command <<<
    tn93 \
      ~{fastFastA} \
      ~{true="-q" false="" qQ}
  >>>
}