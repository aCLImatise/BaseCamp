version 1.0

task Antarna.pyDP {
  input {
    String? diff_accessibility
    String? fuzzy_constraint
    String? diff_fuzzy_constraint
    String? trail_blaze_threshold
    String? cstr
    String? accuracy
  }
  command <<<
    antarna.py DP \
      ~{if defined(diff_accessibility) then ("--diff-accessibility " +  '"' + diff_accessibility + '"') else ""} \
      ~{if defined(fuzzy_constraint) then ("--fuzzyConstraint " +  '"' + fuzzy_constraint + '"') else ""} \
      ~{if defined(diff_fuzzy_constraint) then ("--diff-fuzzyConstraint " +  '"' + diff_fuzzy_constraint + '"') else ""} \
      ~{if defined(trail_blaze_threshold) then ("--trailblaze_threshold " +  '"' + trail_blaze_threshold + '"') else ""} \
      ~{if defined(cstr) then ("-Cstr " +  '"' + cstr + '"') else ""} \
      ~{if defined(accuracy) then ("--accuracy " +  '"' + accuracy + '"') else ""}
  >>>
  parameter_meta {
    diff_accessibility: "Define an differential accessibility evaluation block."
    fuzzy_constraint: "Define fuzzy structure constraint wihtin DP mode"
    diff_fuzzy_constraint: "Define a differential fuzzy structure constraint wihtin DP mode"
    trail_blaze_threshold: "Define the threshold whic need to be passed in order to bonify certain elements in the terrain graph."
    cstr: ""
    accuracy: ""
  }
}