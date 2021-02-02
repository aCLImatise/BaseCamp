version 1.0

task Starchfloat128 {
  input {
    Boolean? note
    Boolean? bzip_two
    Boolean? omit_signature
    String? report_progress
    Boolean? header
    String faster_dot
    String data_dot
  }
  command <<<
    starch_float128 \
      ~{faster_dot} \
      ~{data_dot} \
      ~{if (note) then "--note" else ""} \
      ~{if (bzip_two) then "--bzip2" else ""} \
      ~{if (omit_signature) then "--omit-signature" else ""} \
      ~{if defined(report_progress) then ("--report-progress " +  '"' + report_progress + '"') else ""} \
      ~{if (header) then "--header" else ""}
  >>>
  parameter_meta {
    note: "=\\\"foo bar...\\\"   Append note to output archive metadata (optional)."
    bzip_two: "| --gzip      Specify backend compression type (optional, default\\nis bzip2)."
    omit_signature: "Skip generating per-chromosome data integrity signature\\n(optional, default is to generate signature)."
    report_progress: "Report compression progress every N elements per\\nchromosome to standard error stream (optional)"
    header: "Support BED input with custom UCSC track, SAM or VCF\\nheaders, or generic comments (optional)."
    faster_dot: "Process Flags"
    data_dot: "--version             Show binary version."
  }
  output {
    File out_stdout = stdout()
  }
}