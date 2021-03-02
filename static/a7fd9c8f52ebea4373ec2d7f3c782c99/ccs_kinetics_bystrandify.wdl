version 1.0

task Ccskineticsbystrandify {
  input {
    Boolean? min_coverage
    Boolean? log_level
    Boolean? log_file
    String in_dot_bam
    String out_dot_bam
  }
  command <<<
    ccs_kinetics_bystrandify \
      ~{in_dot_bam} \
      ~{out_dot_bam} \
      ~{if (min_coverage) then "--min-coverage" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0"
  }
  parameter_meta {
    min_coverage: "INT   Specifies the minimum number of passes per strand (fn/rn) for creating a strand-specific read.\\n[1]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [INFO]"
    log_file: "FILE  Log to a file, instead of stderr."
    in_dot_bam: "FILE  Input BAM file"
    out_dot_bam: "FILE  Output BAM file"
  }
  output {
    File out_stdout = stdout()
  }
}