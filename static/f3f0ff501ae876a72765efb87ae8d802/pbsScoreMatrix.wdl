version 1.0

task PbsScoreMatrix {
  input {
    Int branchBranchLength
    Boolean halfHalfPbs
    Boolean noNoPbs
  }
  command <<<
    pbsScoreMatrix \
      ~{if defined(branchBranchLength) then ("--branch-length " +  '"' + branchBranchLength + '"') else ""} \
      ~{true="--half-pbs" false="" halfHalfPbs} \
      ~{true="--no-pbs" false="" noNoPbs}
  >>>
}