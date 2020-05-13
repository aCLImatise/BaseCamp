version 1.0

task TbprofilerLibrarySummary.pyCompare {
  input {
    String drugsDrugs
    String? prefixPrefix1
    String? prefixPrefix2
  }
  command <<<
    tbprofiler_library_summary.py compare \
      ~{prefixPrefix1} \
      ~{if defined(drugsDrugs) then ("--drugs " +  '"' + drugsDrugs + '"') else ""} \
      ~{prefixPrefix2}
  >>>
}