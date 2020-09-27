version 1.0

task Hugemergepl {
  input {
    Boolean? keep
    String source_dir
  }
  command <<<
    huge_merge_pl \
      ~{source_dir} \
      ~{if (keep) then "--keep" else ""}
  >>>
  parameter_meta {
    keep: "Keep the unmerged files.\\nThe unmerged files are deleted by default."
    source_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}