version 1.0

task BwtIndexRefFilePrefix {
  input {
    String? exEx
    String? reReFfa
    String? prefixPrefix
    String? exEx
    String? myMyRef
  }
  command <<<
    bwt_index Ref_File Prefix \
      ~{exEx} \
      ~{reReFfa} \
      ~{prefixPrefix} \
      ~{exEx} \
      ~{myMyRef}
  >>>
}