version 1.0

task Anviscriptgenshortreads {
  input {
    File? output_file_path
  }
  command <<<
    anvi_script_gen_short_reads \
      ~{if defined(output_file_path) then ("--output-file-path " +  '"' + output_file_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_path: "Output FASTA file path\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}