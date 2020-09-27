version 1.0

task SingleCellRnaSeqMetricsCollector {
  input {
    Int? default_g
    String? final_command_line
    Boolean? displays_options_specific
    String null_dot
    String cell_bc_file
    String instead_dot
    String num_core_barcodes
  }
  command <<<
    SingleCellRnaSeqMetricsCollector \
      ~{null_dot} \
      ~{cell_bc_file} \
      ~{instead_dot} \
      ~{num_core_barcodes} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    null_dot: "STRAND_SPECIFICITY=StrandSpecificity"
    cell_bc_file: "CELL_BC_FILE=File             Override NUM_CORE_BARCODES, and process reads that have the cell barcodes in this file"
    instead_dot: "When supplied, output is ordered to match the input barcode ordering. The file"
    num_core_barcodes: "READ_MQ=Integer               The map quality of the read to be included for determining which cells will be measured. "
  }
  output {
    File out_stdout = stdout()
  }
}