version 1.0

task BwtIndexRefFileEx.Ex. {
  input {
    String? reReFfa
    String? prefixPrefix
    String? exEx
    String? myMyRef
  }
  command <<<
    bwt_index Ref_File ex. ex. \
      ~{reReFfa} \
      ~{prefixPrefix} \
      ~{exEx} \
      ~{myMyRef}
  >>>
}