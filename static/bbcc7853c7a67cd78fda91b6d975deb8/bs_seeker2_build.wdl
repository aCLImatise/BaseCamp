version 1.0

task BsSeeker2Build.py {
  input {
    Boolean rrbsRrbs
    String lowLow
    String upUp
    String cutCutSite
  }
  command <<<
    bs_seeker2-build.py \
      ~{true="--rrbs" false="" rrbsRrbs} \
      ~{if defined(lowLow) then ("--low " +  '"' + lowLow + '"') else ""} \
      ~{if defined(upUp) then ("--up " +  '"' + upUp + '"') else ""} \
      ~{if defined(cutCutSite) then ("--cut-site " +  '"' + cutCutSite + '"') else ""}
  >>>
}