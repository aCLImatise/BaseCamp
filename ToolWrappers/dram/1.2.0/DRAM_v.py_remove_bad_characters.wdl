version 1.0

task DRAMvpyRemoveBadCharacters {
  input {
    File? input_fast_a
    File? input_vir_sorter_affi_contigs
    File? name_cleaning_name
  }
  command <<<
    DRAM_v_py remove_bad_characters \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(input_vir_sorter_affi_contigs) then ("--input_virsorter_affi_contigs " +  '"' + input_vir_sorter_affi_contigs + '"') else ""} \
      ~{if defined(name_cleaning_name) then ("--output " +  '"' + name_cleaning_name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.2.0--py_0"
  }
  parameter_meta {
    input_fast_a: "Fasta file to remove ; and = from headers (default:\\nNone)"
    input_vir_sorter_affi_contigs: "Fasta file to remove ; and = from headers (default:\\nNone)"
    name_cleaning_name: "Name of output file. If cleaning a fasta file the\\noutput file name must have no = or ;. (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_cleaning_name = "${in_name_cleaning_name}"
  }
}