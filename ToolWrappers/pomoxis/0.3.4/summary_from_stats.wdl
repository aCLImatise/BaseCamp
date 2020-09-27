version 1.0

task SummaryFromStats {
  input {
    Boolean? per_reference
    String? o
    String? i
  }
  command <<<
    summary_from_stats \
      ~{if (per_reference) then "--per_reference" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    per_reference: "Also output a summary for each reference. (default:"
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}