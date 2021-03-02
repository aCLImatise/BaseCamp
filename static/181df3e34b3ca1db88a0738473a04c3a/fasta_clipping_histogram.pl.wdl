version 1.0

task FastaClippingHistogrampl {
  input {
    String input_file_dot_fa
  }
  command <<<
    fasta_clipping_histogram_pl \
      ~{input_file_dot_fa}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_dot_fa: "= input file (in FASTA format, can be GZIPped)"
  }
  output {
    File out_stdout = stdout()
  }
}