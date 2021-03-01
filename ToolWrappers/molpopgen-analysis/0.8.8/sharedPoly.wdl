version 1.0

task SharedPoly {
  input {
    Boolean? infile_sequence_data
    Boolean? sample_size_first
    Boolean? verbose_output
  }
  command <<<
    sharedPoly \
      ~{if (infile_sequence_data) then "-i" else ""} \
      ~{if (sample_size_first) then "-n" else ""} \
      ~{if (verbose_output) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    infile_sequence_data: "infile (for sequence data in FASTA format)"
    sample_size_first: "[integer] (sample size of the first partition in the data)"
    verbose_output: "(verbose output)"
  }
  output {
    File out_stdout = stdout()
  }
}