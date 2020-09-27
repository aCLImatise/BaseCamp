version 1.0

task AtlasDiff {
  input {
    Boolean? keep_tmp
    String? tmp
    String? k
    String sample
    String graph
  }
  command <<<
    atlas diff \
      ~{sample} \
      ~{graph} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    keep_tmp: ""
    tmp: ""
    k: ""
    sample: "sample id"
    graph: "The graph to compare new sample against"
  }
  output {
    File out_stdout = stdout()
  }
}