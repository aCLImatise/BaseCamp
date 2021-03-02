version 1.0

task Clean {
  input {
    File? assembly
    String? csv
    File? filename_output_defaultfilteredassemblyfasta
  }
  command <<<
    clean \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(csv) then ("--csv " +  '"' + csv + '"') else ""} \
      ~{if defined(filename_output_defaultfilteredassemblyfasta) then ("--output " +  '"' + filename_output_defaultfilteredassemblyfasta + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly: "filename of assembly in FASTA format"
    csv: "Tapestry CSV output"
    filename_output_defaultfilteredassemblyfasta: "filename of output contigs, default\\nfiltered_assembly.fasta\\n"
  }
  output {
    File out_stdout = stdout()
    File out_filename_output_defaultfilteredassemblyfasta = "${in_filename_output_defaultfilteredassemblyfasta}"
  }
}