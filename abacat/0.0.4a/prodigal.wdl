version 1.0

task Prodigal.py {
  input {
    String? input_fasta_file
    String? path_output_folder
  }
  command <<<
    prodigal.py \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(path_output_folder) then ("--output " +  '"' + path_output_folder + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "Input FASTA file or dir containing fasta files"
    path_output_folder: "Path to output folder"
  }
}