version 1.0

task RollCall {
  input {
    Int? default_g
    String? final_command_line
    Boolean? std_help
    String bam_dot
    String null_dot
    String reads_dot
    String chromosomes_dot
  }
  command <<<
    RollCall \
      ~{bam_dot} \
      ~{null_dot} \
      ~{reads_dot} \
      ~{chromosomes_dot} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""} \
      ~{if (std_help) then "--stdhelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dropseq_tools:2.4.0--0"
  }
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    std_help: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    bam_dot: "This file can be used as the VCF input file on subsequent runs of the same data set"
    null_dot: "SNP_COVERAGE_HISTOGRAM=File   Output a coverage report for the number of reads on each SNP.  Bins SNPs by the number of"
    reads_dot: "Default value: null. "
    chromosomes_dot: "Default value: [X, Y, MT]. This option can be set to 'null' to clear the"
  }
  output {
    File out_stdout = stdout()
  }
}