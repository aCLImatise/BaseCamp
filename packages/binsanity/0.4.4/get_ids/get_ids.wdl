version 1.0

task Getids {
  input {
    Boolean? specify_directory_containing
    File? specify_output_file
    Boolean? specify_fasta_file
    Boolean? specify_minimum_length
  }
  command <<<
    get_ids \
      ~{if (specify_directory_containing) then "-f" else ""} \
      ~{if (specify_output_file) then "-o" else ""} \
      ~{if (specify_fasta_file) then "-l" else ""} \
      ~{if (specify_minimum_length) then "-x" else ""}
  >>>
  parameter_meta {
    specify_directory_containing: "Specify the directory containing fasta file"
    specify_output_file: "Specify the output file"
    specify_fasta_file: "Specify fasta file"
    specify_minimum_length: "Specify minimum length to be incorporated"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}