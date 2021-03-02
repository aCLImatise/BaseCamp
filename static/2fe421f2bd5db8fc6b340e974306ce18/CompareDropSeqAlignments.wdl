version 1.0

task CompareDropSeqAlignments {
  input {
    Int? default_g
    String? final_command_line
    Boolean? std_help
    String times_dot
    String null_dot
  }
  command <<<
    CompareDropSeqAlignments \
      ~{times_dot} \
      ~{null_dot} \
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
    times_dot: "CONTIG_REPORT=File            Output file that maps the contig the read uniquely mapped to in INPUT_1, and the contig"
    null_dot: "READ_REPORT=File              Output each read that disagrees on mapping by contig/position.  Emits the read name,"
  }
  output {
    File out_stdout = stdout()
  }
}