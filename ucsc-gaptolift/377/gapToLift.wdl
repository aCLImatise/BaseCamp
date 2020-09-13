version 1.0

task GapToLift {
  input {
    String? chr
    String? min_gap
    Boolean? insane
    File? bed_file
    Boolean? allow_bridged
    Int? verbose
    String db
    String lift_file_dot_lft
  }
  command <<<
    gapToLift \
      ~{db} \
      ~{lift_file_dot_lft} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if defined(min_gap) then ("-minGap " +  '"' + min_gap + '"') else ""} \
      ~{if (insane) then "-insane" else ""} \
      ~{if defined(bed_file) then ("-bedFile " +  '"' + bed_file + '"') else ""} \
      ~{if (allow_bridged) then "-allowBridged" else ""} \
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
  output {
    File out_stdout = stdout()
    File out_bed_file = "${in_bed_file}"
  }
}