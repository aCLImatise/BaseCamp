version 1.0

task Msaboot {
  input {
    String? file_name_fasta
    String? file_name_bootstrapped
    String? number
  }
  command <<<
    msaboot \
      ~{if defined(file_name_fasta) then ("--input " +  '"' + file_name_fasta + '"') else ""} \
      ~{if defined(file_name_bootstrapped) then ("--output " +  '"' + file_name_bootstrapped + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""}
  >>>
  parameter_meta {
    file_name_fasta: "The file name of the FASTA file to be used as input."
    file_name_bootstrapped: "The file name of the bootstrapped alignment data output, stored in relaxed PHYLIP format."
    number: "The number of bootstrap replicates."
  }
}