version 1.0

task FastutilsSubseq {
  input {
    String? input_file_fastx
    String? output_file_use
    Boolean? print_version_build
  }
  command <<<
    fastutils subseq \
      ~{if defined(input_file_fastx) then ("-i " +  '"' + input_file_fastx + '"') else ""} \
      ~{if defined(output_file_use) then ("-o " +  '"' + output_file_use + '"') else ""} \
      ~{true="-v" false="" print_version_build}
  >>>
  parameter_meta {
    input_file_fastx: "input file in fastx format. Use - for stdin."
    output_file_use: "output file. Use - for stdout."
    print_version_build: "print version and build date"
  }
}