version 1.0

task Bam2sam {
  input {
    Boolean? no_header
    Boolean? header_only
    String in_dot_bam
  }
  command <<<
    bam2sam \
      ~{in_dot_bam} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if (header_only) then "--header-only" else ""}
  >>>
  parameter_meta {
    no_header: "Omit header from output."
    header_only: "Print only the header (no records)."
    in_dot_bam: "FILE  Input BAM file. If not provided, stdin will be used as input."
  }
  output {
    File out_stdout = stdout()
  }
}