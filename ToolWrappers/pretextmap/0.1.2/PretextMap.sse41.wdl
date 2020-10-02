version 1.0

task PretextMapsse41 {
  input {
    Boolean? sort_order
  }
  command <<<
    PretextMap_sse41 \
      ~{if (sort_order) then "--sortorder" else ""}
  >>>
  parameter_meta {
    sort_order: "({descend}, ascend)\\n--mapq {10}\\n--filterInclude \\\"seq_ [, seq_]*\\\"\\n--filterExclude \\\"seq_ [, seq_]*\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}