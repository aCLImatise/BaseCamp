version 1.0

task MafRanges {
  input {
    String? other_db
    Boolean? not_all_o_gap
    String in_dot_maf
    String db
    String out_dot_bed
  }
  command <<<
    mafRanges \
      ~{in_dot_maf} \
      ~{db} \
      ~{out_dot_bed} \
      ~{if defined(other_db) then ("-otherDb " +  '"' + other_db + '"') else ""} \
      ~{if (not_all_o_gap) then "-notAllOGap" else ""}
  >>>
  parameter_meta {
    other_db: "Output ranges only for alignments that include oDb.\\noDB can be comma-separated list."
    not_all_o_gap: "Don't include bases for which all other species have a gap."
    in_dot_maf: ""
    db: ""
    out_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}