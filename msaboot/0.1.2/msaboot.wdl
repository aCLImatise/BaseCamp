version 1.0

task Msaboot {
  input {
    File? file_name_used
    File? file_name_bootstrapped
    Int? number
  }
  command <<<
    msaboot \
      ~{if defined(file_name_used) then ("--input " +  '"' + file_name_used + '"') else ""} \
      ~{if defined(file_name_bootstrapped) then ("--output " +  '"' + file_name_bootstrapped + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""}
  >>>
  parameter_meta {
    file_name_used: "The file name of the FASTA file to be used as input."
    file_name_bootstrapped: "The file name of the bootstrapped alignment data\\noutput, stored in relaxed PHYLIP format."
    number: "The number of bootstrap replicates.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_file_name_bootstrapped = "${in_file_name_bootstrapped}"
  }
}