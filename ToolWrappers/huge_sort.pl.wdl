version 1.0

task Hugesortpl {
  input {
    Boolean? keep
    String source
  }
  command <<<
    huge_sort_pl \
      ~{source} \
      ~{if (keep) then "--keep" else ""}
  >>>
  parameter_meta {
    keep: "keep the unsorted file\\nThe default is to delete the unsorted file."
    source: ""
  }
  output {
    File out_stdout = stdout()
  }
}