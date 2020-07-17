version 1.0

task TbprofilerLibrarySummary.pyCompare {
  input {
    String? drugs
    String prefix_one
    String prefix_two
  }
  command <<<
    tbprofiler_library_summary.py compare \
      ~{prefix_one} \
      ~{prefix_two} \
      ~{if defined(drugs) then ("--drugs " +  '"' + drugs + '"') else ""}
  >>>
  parameter_meta {
    drugs: "NGS Platform (default: None)"
    prefix_one: "NGS Platform"
    prefix_two: "NGS Platform"
  }
}