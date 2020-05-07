version 1.0

task BwtIndexRefFileEx.Ref.faMyRef {
  input {
    String? prefixPrefix
    String? exEx
    String? myMyRef
  }
  command <<<
    bwt_index Ref_File ex. ref.fa MyRef \
      ~{prefixPrefix} \
      ~{exEx} \
      ~{myMyRef}
  >>>
}