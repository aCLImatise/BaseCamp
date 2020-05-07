version 1.0

task BwtIndexRefFileMyRef {
  input {
    String? exEx
    String? reReFfa
    String? prefixPrefix
    String? exEx
    String? myMyRef
  }
  command <<<
    bwt_index Ref_File MyRef \
      ~{exEx} \
      ~{reReFfa} \
      ~{prefixPrefix} \
      ~{exEx} \
      ~{myMyRef}
  >>>
}