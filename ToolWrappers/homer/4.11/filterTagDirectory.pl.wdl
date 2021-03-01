version 1.0

task FilterTagDirectorypl {
  input {
    Boolean? strand
    Boolean? tag_adjust
    Boolean? keep
    Boolean? update
  }
  command <<<
    filterTagDirectory_pl \
      ~{if (strand) then "-strand" else ""} \
      ~{if (tag_adjust) then "-tagAdjust" else ""} \
      ~{if (keep) then "-keep" else ""} \
      ~{if (update) then "-update" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    strand: "(filter reads from the same strand only)"
    tag_adjust: "<#> (adjust reads #bp before assigning overlap of 5' position)"
    keep: "(keep tags in peaks, discard others. def: discard peak tags)"
    update: "(process tags, then replace tag directory)"
  }
  output {
    File out_stdout = stdout()
  }
}