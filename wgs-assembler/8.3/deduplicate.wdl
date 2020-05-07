version 1.0

task Deduplicate {
  input {
    String erateErate
    String summarySummary
    String reportReport
  }
  command <<<
    deduplicate \
      ~{if defined(erateErate) then ("-erate " +  '"' + erateErate + '"') else ""} \
      ~{if defined(summarySummary) then ("-summary " +  '"' + summarySummary + '"') else ""} \
      ~{if defined(reportReport) then ("-report " +  '"' + reportReport + '"') else ""}
  >>>
}