version 1.0

task _edialign {
  input {
    Boolean overlapOverlapW
    Boolean linkageLinkage
    Boolean maxMaxFragL
  }
  command <<<
    _edialign \
      ~{true="-overlapw" false="" overlapOverlapW} \
      ~{true="-linkage" false="" linkageLinkage} \
      ~{true="-maxfragl" false="" maxMaxFragL}
  >>>
}