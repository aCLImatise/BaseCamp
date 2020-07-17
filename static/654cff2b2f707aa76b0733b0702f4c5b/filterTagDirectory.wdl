version 1.0

task FilterTagDirectory.pl {
  input {
    Boolean? strand
    Boolean? tag_adjust
    Boolean? keep
    Boolean? update
  }
  command <<<
    filterTagDirectory.pl \
      ~{true="-strand" false="" strand} \
      ~{true="-tagAdjust" false="" tag_adjust} \
      ~{true="-keep" false="" keep} \
      ~{true="-update" false="" update}
  >>>
  parameter_meta {
    strand: "(filter reads from the same strand only)"
    tag_adjust: "<#> (adjust reads #bp before assigning overlap of 5' position)"
    keep: "(keep tags in peaks, discard others. def: discard peak tags)"
    update: "(process tags, then replace tag directory)"
  }
}