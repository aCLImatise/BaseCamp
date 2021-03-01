version 1.0

task Starchcatfloat128 {
  input {
    Boolean? note
    Boolean? bzip_two
    Boolean? omit_signature
    String? report_progress
    String required_dot
  }
  command <<<
    starchcat_float128 \
      ~{required_dot} \
      ~{if (note) then "--note" else ""} \
      ~{if (bzip_two) then "--bzip2" else ""} \
      ~{if (omit_signature) then "--omit-signature" else ""} \
      ~{if defined(report_progress) then ("--report-progress " +  '"' + report_progress + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    note: "=\\\"foo bar...\\\"   Append note to output archive metadata (optional)."
    bzip_two: "Specify backend compression type (optional, default\\nis bzip2)."
    omit_signature: "Skip generating per-chromosome data integrity signature\\n(optional, default is to generate signature)."
    report_progress: "Report compression progress every N elements per\\nchromosome to standard error stream (optional)"
    required_dot: "* While two or more inputs make sense for a multiset union operation, you"
  }
  output {
    File out_stdout = stdout()
  }
}