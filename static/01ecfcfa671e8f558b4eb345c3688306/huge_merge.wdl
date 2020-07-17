version 1.0

task HugeMerge.pl {
  input {
    Boolean? keep
    String source_dir
  }
  command <<<
    huge-merge.pl \
      ~{source_dir} \
      ~{true="--keep" false="" keep}
  >>>
  parameter_meta {
    keep: "Keep the unmerged files. The unmerged files are deleted by default."
    source_dir: ""
  }
}