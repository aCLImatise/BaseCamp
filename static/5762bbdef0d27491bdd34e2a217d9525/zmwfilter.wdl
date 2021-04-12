version 1.0

task Zmwfilter {
  input {
    File? include
    File? exclude
    Boolean? log_level
    Boolean? log_file
    String output_dot_bam
  }
  command <<<
    zmwfilter \
      ~{output_dot_bam} \
      ~{if (include) then "--include" else ""} \
      ~{if (exclude) then "--exclude" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/zmwfilter:1.0.0--0"
  }
  parameter_meta {
    include: "STR   Include ZMWs in output subreads.bam file. This can be either a comma-separated list of IDs or a\\nfilename containing one ID per line."
    exclude: "STR   Exclude ZMWs from output subreads.bam file. This can be either a comma-separated list of IDs or\\na filename containing one ID per line."
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    output_dot_bam: "STR   Output subreads BAM"
  }
  output {
    File out_stdout = stdout()
    File out_include = "${in_include}"
    File out_exclude = "${in_exclude}"
  }
}