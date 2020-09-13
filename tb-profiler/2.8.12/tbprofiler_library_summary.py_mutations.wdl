version 1.0

task TbprofilerLibrarySummarypyMutations {
  input {
    String? drugs
    String? ngs
  }
  command <<<
    tbprofiler_library_summary_py mutations \
      ~{if defined(drugs) then ("--drugs " +  '"' + drugs + '"') else ""} \
      ~{if defined(ngs) then ("--ngs " +  '"' + ngs + '"') else ""}
  >>>
  parameter_meta {
    drugs: "NGS Platform (default: None)"
    ngs: "NGS Platform (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}