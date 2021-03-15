version 1.0

task BedtkCov {
  input {
    Boolean? only_count_breadth
    Boolean? containment_only
    String loaded_dot_bed
    String streamed_dot_bed
  }
  command <<<
    bedtk cov \
      ~{loaded_dot_bed} \
      ~{streamed_dot_bed} \
      ~{if (only_count_breadth) then "-c" else ""} \
      ~{if (containment_only) then "-C" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtk:0.0.r25.dirty--hed695b0_0"
  }
  parameter_meta {
    only_count_breadth: "only count; no breadth of depth"
    containment_only: "containment only"
    loaded_dot_bed: ""
    streamed_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}