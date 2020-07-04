version 1.0

task TagDir2bed.pl {
  input {
    Boolean? len
    Boolean? separate
    String tag_directory
  }
  command <<<
    tagDir2bed.pl \
      ~{tag_directory} \
      ~{true="-len" false="" len} \
      ~{true="-separate" false="" separate}
  >>>
  parameter_meta {
    len: "<#> (read length to report, default: given sizes in tags.tsv file)"
    separate: "(report separate BED reads if there are multiple reads per position)"
    tag_directory: ""
  }
}