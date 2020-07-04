version 1.0

task GaasFastaStatistics.pl {
  input {
    String? in_file
    String? output_directory_written
  }
  command <<<
    gaas_fasta_statistics.pl \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""}
  >>>
  parameter_meta {
    in_file: "Input fasta file containing DNA sequences."
    output_directory_written: "[OPTIONAL] Output directory where diffrent output files will be written. If no output is specified, the result will written to STDOUT."
  }
}