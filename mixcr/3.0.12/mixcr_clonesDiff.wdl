version 1.0

task MixcrClonesDiff {
  input {
    Boolean? verbose
    Boolean? use_c_gene_include
    File? force_overwrite
    Boolean? use_j_gene_include
    Boolean? no_warnings
    Boolean? use_v_gene_include
    Boolean? cf_jv
    String scr
    String clones_diff
    Int in_one
    Int in_two
    String? report
  }
  command <<<
    mixcr clonesDiff \
      ~{scr} \
      ~{clones_diff} \
      ~{in_one} \
      ~{in_two} \
      ~{report} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (use_c_gene_include) then "-c" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if (use_j_gene_include) then "-j" else ""} \
      ~{if (no_warnings) then "--no-warnings" else ""} \
      ~{if (use_v_gene_include) then "-v" else ""} \
      ~{if (cf_jv) then "-cfjv" else ""}
  >>>
  parameter_meta {
    verbose: "Verbose warning messages."
    use_c_gene_include: "Use C gene in clone comparison (include it as a clone key along with a clone\\nsequence)."
    force_overwrite: "Force overwrite of output file(s)."
    use_j_gene_include: "Use J gene in clone comparison (include it as a clone key along with a clone\\nsequence)."
    no_warnings: "Suppress all warning messages."
    use_v_gene_include: "Use V gene in clone comparison (include it as a clone key along with a clone\\nsequence).\\n"
    cf_jv: ""
    scr: ""
    clones_diff: ""
    in_one: ""
    in_two: ""
    report: ""
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}