version 1.0

task AntarnapyDP {
  input {
    String? cstr
    String? accuracy
    String? accessibility
    String? diff_accessibility
    String? fuzzy_constraint
    String? diff_fuzzy_constraint
    String? trail_blaze_threshold
  }
  command <<<
    antarna_py DP \
      ~{if defined(cstr) then ("--Cstr " +  '"' + cstr + '"') else ""} \
      ~{if defined(accuracy) then ("--accuracy " +  '"' + accuracy + '"') else ""} \
      ~{if defined(accessibility) then ("--accessibility " +  '"' + accessibility + '"') else ""} \
      ~{if defined(diff_accessibility) then ("--diff-accessibility " +  '"' + diff_accessibility + '"') else ""} \
      ~{if defined(fuzzy_constraint) then ("--fuzzyConstraint " +  '"' + fuzzy_constraint + '"') else ""} \
      ~{if defined(diff_fuzzy_constraint) then ("--diff-fuzzyConstraint " +  '"' + diff_fuzzy_constraint + '"') else ""} \
      ~{if defined(trail_blaze_threshold) then ("--trailblaze_threshold " +  '"' + trail_blaze_threshold + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cstr: "Structure constraint using RNA dotbracket notation. If\\nspecified, this structure will be used to constrain a\\nfolding hypothesis to produce a ligand bound model of\\nthe dotplot. (TYPE: str)"
    accuracy: "Define an accuracy evaluation block."
    accessibility: "Define an accessibility evaluation block."
    diff_accessibility: "Define an differential accessibility evaluation block."
    fuzzy_constraint: "Define fuzzy structure constraint wihtin DP mode"
    diff_fuzzy_constraint: "Define a differential fuzzy structure constraint\\nwihtin DP mode"
    trail_blaze_threshold: "Define the threshold whic need to be passed in order\\nto bonify certain elements in the terrain graph.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}