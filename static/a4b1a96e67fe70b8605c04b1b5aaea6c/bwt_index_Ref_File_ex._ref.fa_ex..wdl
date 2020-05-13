version 1.0

task BwtIndexRefFileEx.Ref.faEx. {
  input {
    String? prefixPrefix
    String? exEx
    String? myMyRef
  }
  command <<<
    bwt_index Ref_File ex. ref.fa ex. \
      ~{prefixPrefix} \
      ~{exEx} \
      ~{myMyRef}
  >>>
}