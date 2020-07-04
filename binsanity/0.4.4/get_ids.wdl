version 1.0

task GetIds {
  input {
    Boolean? specify_directory_containing
    Boolean? specify_output_file
    Boolean? specify_fasta_file
    Boolean? specify_minimum_length
  }
  command <<<
    get-ids \
      ~{true="-f" false="" specify_directory_containing} \
      ~{true="-o" false="" specify_output_file} \
      ~{true="-l" false="" specify_fasta_file} \
      ~{true="-x" false="" specify_minimum_length}
  >>>
  parameter_meta {
    specify_directory_containing: "Specify the directory containing fasta file"
    specify_output_file: "Specify the output file"
    specify_fasta_file: "Specify fasta file"
    specify_minimum_length: "Specify minimum length to be incorporated"
  }
}