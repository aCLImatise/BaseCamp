version 1.0

task GfapyMergelinear {
  input {
    Boolean redundantRedundant
    Boolean noNoProgress
    Boolean quietQuiet
    String vVLevel
  }
  command <<<
    gfapy-mergelinear \
      ~{true="--redundant" false="" redundantRedundant} \
      ~{true="--no-progress" false="" noNoProgress} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(vVLevel) then ("--vlevel " +  '"' + vVLevel + '"') else ""}
  >>>
}