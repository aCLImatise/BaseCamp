version 1.0

task YacrdSplit {
  input {
    String? path_sequence_compression
    String? path_output_format
  }
  command <<<
    yacrd split \
      ~{if defined(path_sequence_compression) then ("--input " +  '"' + path_sequence_compression + '"') else ""} \
      ~{if defined(path_output_format) then ("--output " +  '"' + path_output_format + '"') else ""}
  >>>
  parameter_meta {
    path_sequence_compression: "path to sequence input (fasta|fastq) compression is autodetect (none|gzip|bzip2|lzma)"
    path_output_format: "path to output file, format and compression of input is preserved"
  }
}