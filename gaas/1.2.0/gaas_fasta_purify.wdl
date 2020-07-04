version 1.0

task GaasFastaPurify.pl {
  input {
    String? in_file
    String? size
    String? output_directory_written
  }
  command <<<
    gaas_fasta_purify.pl \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""}
  >>>
  parameter_meta {
    in_file: "Input fasta file containing DNA sequences."
    size: "Integer. Filter the sequence shorter to this size (in bp). Default: 1000"
    output_directory_written: "[OPTIONAL] Output directory where diffrent output files will be written. If no output is specified, the result will written to STDOUT."
  }
}