version 1.0

task Edialign {
  input {
    Boolean overlapOverlapW
    Boolean linkageLinkage
    Boolean maxMaxFragL
  }
  command <<<
    edialign \
      ~{true="-overlapw" false="" overlapOverlapW} \
      ~{true="-linkage" false="" linkageLinkage} \
      ~{true="-maxfragl" false="" maxMaxFragL}
  >>>
}