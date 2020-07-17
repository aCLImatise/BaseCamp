version 1.0

task GapToLift {
  input {
    String? chr
    String? min_gap
    Boolean? insane
    File? bed_file
    Boolean? allow_bridged
    String? verbose
    String db
    String lift_file_dot_lft
  }
  command <<<
    gapToLift \
      ~{db} \
      ~{lift_file_dot_lft} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if defined(min_gap) then ("-minGap " +  '"' + min_gap + '"') else ""} \
      ~{true="-insane" false="" insane} \
      ~{if defined(bed_file) then ("-bedFile " +  '"' + bed_file + '"') else ""} \
      ~{true="-allowBridged" false="" allow_bridged} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    chr: "- work only on given chrom"
    min_gap: "- examine gaps only >= than M"
    insane: "- do *not* perform coordinate sanity checks on gaps"
    bed_file: "- output segments to fileName.bed"
    allow_bridged: "- consider any type of gap not just the non-bridged gaps"
    verbose: "- N > 1 see more information about procedure"
    db: ""
    lift_file_dot_lft: ""
  }
}