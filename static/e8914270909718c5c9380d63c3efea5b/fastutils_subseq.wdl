version 1.0

task FastutilsSubseq {
  input {
    File? input_file_fastx
    File? output_file_use
    Boolean? print_version_build
  }
  command <<<
    fastutils subseq \
      ~{if defined(input_file_fastx) then ("-i " +  '"' + input_file_fastx + '"') else ""} \
      ~{if defined(output_file_use) then ("-o " +  '"' + output_file_use + '"') else ""} \
      ~{if (print_version_build) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_fastx: "input file in fastx format. Use - for stdin."
    output_file_use: "output file. Use - for stdout."
    print_version_build: "print version and build date"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_use = "${in_output_file_use}"
  }
}