version 1.0

task MixcrAlignmentsDiff {
  input {
    Boolean? no_warnings
    Boolean? verbose
    File? force_overwrite
    File? only_in_first
    File? only_in_second
    File? diff_from_first
    File? diff_from_second
    String? gene_feature
    Int? top_hits_level
    String scr
    String alignments_diff
    String? gene_feature_to_match
    String? only_second
    Int in_one
    Int in_two
    String? report
  }
  command <<<
    mixcr alignmentsDiff \
      ~{scr} \
      ~{alignments_diff} \
      ~{gene_feature_to_match} \
      ~{only_second} \
      ~{in_one} \
      ~{in_two} \
      ~{report} \
      ~{if (no_warnings) then "--no-warnings" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if defined(only_in_first) then ("--only-in-first " +  '"' + only_in_first + '"') else ""} \
      ~{if defined(only_in_second) then ("--only-in-second " +  '"' + only_in_second + '"') else ""} \
      ~{if defined(diff_from_first) then ("--diff-from-first " +  '"' + diff_from_first + '"') else ""} \
      ~{if defined(diff_from_second) then ("--diff-from-second " +  '"' + diff_from_second + '"') else ""} \
      ~{if defined(gene_feature) then ("--gene-feature " +  '"' + gene_feature + '"') else ""} \
      ~{if defined(top_hits_level) then ("--top-hits-level " +  '"' + top_hits_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_warnings: "Suppress all warning messages."
    verbose: "Verbose warning messages."
    force_overwrite: "Force overwrite of output file(s)."
    only_in_first: "output for alignments contained only in the first .vdjca file"
    only_in_second: "output for alignments contained only in the second .vdjca file"
    diff_from_first: "output for alignments from the first file that are different from those\\nalignments in the second file"
    diff_from_second: "output for alignments from the second file that are different from those\\nalignments in the first file"
    gene_feature: "Specifies a gene feature to compare"
    top_hits_level: "Number of top hits to search for a match\\n"
    scr: ""
    alignments_diff: ""
    gene_feature_to_match: ""
    only_second: ""
    in_one: ""
    in_two: ""
    report: ""
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
    File out_only_in_first = "${in_only_in_first}"
    File out_only_in_second = "${in_only_in_second}"
    File out_diff_from_first = "${in_diff_from_first}"
    File out_diff_from_second = "${in_diff_from_second}"
  }
}