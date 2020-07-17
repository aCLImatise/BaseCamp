version 1.0

task HivtraceStripDrams {
  input {
    String? input_fasta_file
    String? var_output
    String? dram
  }
  command <<<
    hivtrace_strip_drams \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(dram) then ("--dram " +  '"' + dram + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "The input FASTA file"
    var_output: "Output"
    dram: "Use this list of DRAMs"
  }
}