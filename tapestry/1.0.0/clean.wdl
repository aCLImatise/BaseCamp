version 1.0

task Clean {
  input {
    File? assembly
    String? csv
    File? filename_output_contigs
  }
  command <<<
    clean \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(csv) then ("--csv " +  '"' + csv + '"') else ""} \
      ~{if defined(filename_output_contigs) then ("--output " +  '"' + filename_output_contigs + '"') else ""}
  >>>
  parameter_meta {
    assembly: "filename of assembly in FASTA format"
    csv: "Tapestry CSV output"
    filename_output_contigs: "filename of output contigs, default\\nfiltered_assembly.fasta\\n"
  }
  output {
    File out_stdout = stdout()
    File out_filename_output_contigs = "${in_filename_output_contigs}"
  }
}