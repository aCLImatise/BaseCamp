version 1.0

task PyprophetBackpropagate {
  input {
    File inIn
    File outOut
    File applyApplyScores
  }
  command <<<
    pyprophet backpropagate \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(applyApplyScores) then ("--apply_scores " +  '"' + applyApplyScores + '"') else ""}
  >>>
}