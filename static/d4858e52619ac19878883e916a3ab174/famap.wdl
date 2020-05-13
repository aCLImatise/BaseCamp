version 1.0

task Famap {
  input {
    String? nN
    String? nN
    String? nxNx
    String? nxNx
  }
  command <<<
    famap \
      ~{nN} \
      ~{nN} \
      ~{nxNx} \
      ~{nxNx}
  >>>
}