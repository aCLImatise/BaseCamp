version 1.0

task Deduplicate {
  input {
    Float? erate
    String? summary
    String? report
    String? ovs
    String? gkp
    Boolean? one
    String? opts
  }
  command <<<
    deduplicate \
      ~{opts} \
      ~{if defined(erate) then ("-erate " +  '"' + erate + '"') else ""} \
      ~{if defined(summary) then ("-summary " +  '"' + summary + '"') else ""} \
      ~{if defined(report) then ("-report " +  '"' + report + '"') else ""} \
      ~{if defined(ovs) then ("-ovs " +  '"' + ovs + '"') else ""} \
      ~{if defined(gkp) then ("-gkp " +  '"' + gkp + '"') else ""} \
      ~{if (one) then "-1" else ""}
  >>>
  parameter_meta {
    erate: "filter overlaps above this fraction error; default 0.015 (== 1.5% error)"
    summary: "write a summary of the fixes to S"
    report: "write a detailed report of the fixes to R"
    ovs: ""
    gkp: ""
    one: ""
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}