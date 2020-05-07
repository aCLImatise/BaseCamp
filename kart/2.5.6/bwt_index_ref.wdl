version 1.0

task BwtIndexRef.fa {
  input {
    String? refRefFile
    String? exEx
    String? reReFfa
    String? prefixPrefix
    String? exEx
    String? myMyRef
  }
  command <<<
    bwt_index ref.fa \
      ~{refRefFile} \
      ~{exEx} \
      ~{reReFfa} \
      ~{prefixPrefix} \
      ~{exEx} \
      ~{myMyRef}
  >>>
}