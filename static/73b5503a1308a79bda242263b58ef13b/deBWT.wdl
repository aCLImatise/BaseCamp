version 1.0

task DeBWT {
  input {
    File? output_bwt_filebinary
    Boolean? optional_maximum_thread
    Boolean? optional_kmer_length
    Boolean? _jellyfish_directory
    String reference
  }
  command <<<
    deBWT \
      ~{reference} \
      ~{if (output_bwt_filebinary) then "-o" else ""} \
      ~{if (optional_maximum_thread) then "-t" else ""} \
      ~{if (optional_kmer_length) then "-k" else ""} \
      ~{if (_jellyfish_directory) then "-j" else ""}
  >>>
  parameter_meta {
    output_bwt_filebinary: ": output bwt file(binary)"
    optional_maximum_thread: "(optional): maximum thread number(default 8)"
    optional_kmer_length: "(optional): k-mer length (from 12 to 32, default 32)"
    _jellyfish_directory: ": jellyfish directory"
    reference: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_bwt_filebinary = "${in_output_bwt_filebinary}"
  }
}