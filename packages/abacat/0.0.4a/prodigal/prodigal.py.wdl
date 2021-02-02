version 1.0

task Prodigalpy {
  input {
    File? input_fasta_file
    File? path_output_folder
  }
  command <<<
    prodigal_py \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(path_output_folder) then ("--output " +  '"' + path_output_folder + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "Input FASTA file or dir containing fasta files"
    path_output_folder: "Path to output folder\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_folder = "${in_path_output_folder}"
  }
}