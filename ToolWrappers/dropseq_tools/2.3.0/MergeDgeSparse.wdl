version 1.0

task MergeDgeSparse {
  input {
    Int? default_g
    String? final_command_line
    Boolean? displays_options_specific
    String cell_dot
    String null_dot
    String mechanisms_dot
    String set_dot
  }
  command <<<
    MergeDgeSparse \
      ~{cell_dot} \
      ~{null_dot} \
      ~{mechanisms_dot} \
      ~{set_dot} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    cell_dot: "At least one of RAW_DGE_OUTPUT_FILE and SCALED_DGE_OUTPUT_FILE must be set. "
    null_dot: "DISCARDED_CELLS_FILE=File     If set, write a list of cell barcodes that have been filtered by any of the filtering"
    mechanisms_dot: "Default value: null. "
    set_dot: "Default value: STRICT. This option can be set to 'null' to clear the default value."
  }
  output {
    File out_stdout = stdout()
  }
}