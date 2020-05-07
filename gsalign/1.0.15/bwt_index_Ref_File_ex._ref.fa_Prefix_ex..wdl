version 1.0

task BwtIndexRefFileEx.Ref.faPrefixEx. {
  input {
    String? myMyRef
  }
  command <<<
    bwt_index Ref_File ex. ref.fa Prefix ex. \
      ~{myMyRef}
  >>>
}