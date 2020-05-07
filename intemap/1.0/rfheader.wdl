version 1.0

task Rfheader {
  input {
    String? refineRefine
    String? theThe
    String? headerHeader
  }
  command <<<
    rfheader \
      ~{refineRefine} \
      ~{theThe} \
      ~{headerHeader}
  >>>
}