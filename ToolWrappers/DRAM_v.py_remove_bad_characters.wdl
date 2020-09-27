version 1.0

task DRAMvpyRemoveBadCharacters {
  input {
    File? input_fast_a
    File? input_vir_sorter_affi_contigs
    File? name_output_file
  }
  command <<<
    DRAM_v_py remove_bad_characters \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(input_vir_sorter_affi_contigs) then ("--input_virsorter_affi_contigs " +  '"' + input_vir_sorter_affi_contigs + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  parameter_meta {
    input_fast_a: "Fasta file to remove ; and = from headers (default:\\nNone)"
    input_vir_sorter_affi_contigs: "Fasta file to remove ; and = from headers (default:\\nNone)"
    name_output_file: "Name of output file. If cleaning a fasta file the\\noutput file name must have no = or ;. (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}