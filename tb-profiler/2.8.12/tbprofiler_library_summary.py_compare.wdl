version 1.0

task TbprofilerLibrarySummarypyCompare {
  input {
    String? drugs
    Int prefix_one
    Int prefix_two
  }
  command <<<
    tbprofiler_library_summary_py compare \
      ~{prefix_one} \
      ~{prefix_two} \
      ~{if defined(drugs) then ("--drugs " +  '"' + drugs + '"') else ""}
  >>>
  parameter_meta {
    drugs: "NGS Platform (default: None)"
    prefix_one: "NGS Platform"
    prefix_two: "NGS Platform"
  }
  output {
    File out_stdout = stdout()
  }
}