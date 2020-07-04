version 1.0

task FastutilsCutN {
  input {
    String? input_file_fastx
    String? output_file_fasta
    Boolean? print_version_build
  }
  command <<<
    fastutils cutN \
      ~{if defined(input_file_fastx) then ("-i " +  '"' + input_file_fastx + '"') else ""} \
      ~{if defined(output_file_fasta) then ("-o " +  '"' + output_file_fasta + '"') else ""} \
      ~{true="-v" false="" print_version_build}
  >>>
  parameter_meta {
    input_file_fastx: "input file in fastx format. Use - for stdin."
    output_file_fasta: "output file in fasta format. Use - for stdout."
    print_version_build: "print version and build date"
  }
}