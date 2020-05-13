version 1.0

task Antarna.pyDP {
  input {
    String diffDiffAccessibility
    String fuzzyFuzzyConstraint
    String diffDiffFuzzyConstraint
    String trailTrailBlazeThreshold
  }
  command <<<
    antarna.py DP \
      ~{if defined(diffDiffAccessibility) then ("--diff-accessibility " +  '"' + diffDiffAccessibility + '"') else ""} \
      ~{if defined(fuzzyFuzzyConstraint) then ("--fuzzyConstraint " +  '"' + fuzzyFuzzyConstraint + '"') else ""} \
      ~{if defined(diffDiffFuzzyConstraint) then ("--diff-fuzzyConstraint " +  '"' + diffDiffFuzzyConstraint + '"') else ""} \
      ~{if defined(trailTrailBlazeThreshold) then ("--trailblaze_threshold " +  '"' + trailTrailBlazeThreshold + '"') else ""}
  >>>
}