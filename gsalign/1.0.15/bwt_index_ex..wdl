version 1.0

task BwtIndexEx. {
  input {
    String? refRefFile
    String? exEx
    String? reReFfa
    String? prefixPrefix
    String? exEx
    String? myMyRef
  }
  command <<<
    bwt_index ex. \
      ~{refRefFile} \
      ~{exEx} \
      ~{reReFfa} \
      ~{prefixPrefix} \
      ~{exEx} \
      ~{myMyRef}
  >>>
}