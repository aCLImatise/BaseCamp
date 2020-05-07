version 1.0

task BwtIndexMyRef {
  input {
    String? refRefFile
    String? exEx
    String? reReFfa
    String? prefixPrefix
    String? exEx
    String? myMyRef
  }
  command <<<
    bwt_index MyRef \
      ~{refRefFile} \
      ~{exEx} \
      ~{reReFfa} \
      ~{prefixPrefix} \
      ~{exEx} \
      ~{myMyRef}
  >>>
}