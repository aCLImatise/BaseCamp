version 1.0

task Hmmfetch2 {
  input {
    Boolean nN
    String? hmmHmmFetch
    String? hmmHmmFile
    String? hmmHmmName
  }
  command <<<
    hmmfetch2 \
      ~{hmmHmmFetch} \
      ~{true="-n" false="" nN} \
      ~{hmmHmmFile} \
      ~{hmmHmmName}
  >>>
}