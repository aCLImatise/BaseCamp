version 1.0

task Eland2tagspl {
  input {
    Boolean? mis
    Boolean? len
    Boolean? uniq
    Boolean? seq
    Boolean? non_uniq
    Boolean? or
  }
  command <<<
    eland2tags_pl \
      ~{if (mis) then "-mis" else ""} \
      ~{if (len) then "-len" else ""} \
      ~{if (uniq) then "-uniq" else ""} \
      ~{if (seq) then "-seq" else ""} \
      ~{if (non_uniq) then "-nonuniq" else ""} \
      ~{if (or) then "-or-" else ""}
  >>>
  parameter_meta {
    mis: "<0,1,2> (Max mismatches, default=2)"
    len: "# (only consider mismatches within the first # bp of sequence [for eland_extended]-def: 32)"
    uniq: "<#> (Max matches to genome for multiple eland format, default=1)"
    seq: "(include sequence with tag)"
    non_uniq: "(include a single version of nonuniq tags, bowtie only)"
    or: "Column 6: + or - for stand\\n"
  }
  output {
    File out_stdout = stdout()
  }
}