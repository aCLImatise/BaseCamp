version 1.0

task YacrdScrubb {
  input {
    File? path_sequence_input
    File? path_output_file
  }
  command <<<
    yacrd scrubb \
      ~{if defined(path_sequence_input) then ("--input " +  '"' + path_sequence_input + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/yacrd:0.6.2--hbcae180_1"
  }
  parameter_meta {
    path_sequence_input: "path to sequence input (fasta|fastq) compression is autodetect (none|gzip|bzip2|lzma)"
    path_output_file: "path to output file, format and compression of input is preserved"
  }
  output {
    File out_stdout = stdout()
  }
}