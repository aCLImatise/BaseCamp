version 1.0

task DetectBeadSynthesisErrors {
  input {
    Int? default_g
    String? final_command_line
    Boolean? std_help
    String barcode_dot
    String bases_dot
    String errors_dot
  }
  command <<<
    DetectBeadSynthesisErrors \
      ~{barcode_dot} \
      ~{bases_dot} \
      ~{errors_dot} \
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
    barcode_dot: "The data has multiple columns: the cell barcode, the number of UMIs, then one"
    bases_dot: "Bases are ordered A,C,G,T for these columns.  An example output with a single base"
    errors_dot: "This is typically the last base of the UMI.  If set to null, program will use the"
  }
  output {
    File out_stdout = stdout()
  }
}