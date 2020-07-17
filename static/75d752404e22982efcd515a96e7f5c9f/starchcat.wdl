version 1.0

task Starchcat {
  input {
    Boolean? note
    Boolean? bzip_two
    Boolean? omit_signature
    String? report_progress
  }
  command <<<
    starchcat \
      ~{true="--note" false="" note} \
      ~{true="--bzip2" false="" bzip_two} \
      ~{true="--omit-signature" false="" omit_signature} \
      ~{if defined(report_progress) then ("--report-progress " +  '"' + report_progress + '"') else ""}
  >>>
  parameter_meta {
    note: "=\"foo bar...\"   Append note to output archive metadata (optional)."
    bzip_two: "| --gzip      Specify backend compression type (optional, default is bzip2)."
    omit_signature: "Skip generating per-chromosome data integrity signature (optional, default is to generate signature)."
    report_progress: "Report compression progress every N elements per chromosome to standard error stream (optional)"
  }
}