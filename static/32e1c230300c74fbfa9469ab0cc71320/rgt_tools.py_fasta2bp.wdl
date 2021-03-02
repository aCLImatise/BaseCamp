version 1.0

task RgttoolspyFasta2bp {
  input {
    File? input_fasta_file
    File? output_file_table
  }
  command <<<
    rgt_tools_py fasta2bp \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(output_file_table) then ("-o " +  '"' + output_file_table + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fasta_file: "Input FASTA file or directory"
    output_file_table: "Output file with a table"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_table = "${in_output_file_table}"
  }
}