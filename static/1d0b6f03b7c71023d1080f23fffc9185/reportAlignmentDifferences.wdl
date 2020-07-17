version 1.0

task ReportAlignmentDifferences {
  input {
    String? i
    String? o
    String report_alignment_differences
  }
  command <<<
    reportAlignmentDifferences \
      ~{report_alignment_differences} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    report_alignment_differences: "-i Q.best.sim4db -o Q"
  }
}