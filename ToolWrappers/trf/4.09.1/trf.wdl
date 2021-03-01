version 1.0

task Trf {
  input {
    Boolean? masked_sequence_file
    Boolean? flanking_sequence
    Boolean? data_file
    Boolean? no_redundancy_elimination
    Int? maximum_tr_length
    Boolean? ngs
    String match
    String mismatch
  }
  command <<<
    trf \
      ~{match} \
      ~{mismatch} \
      ~{if (masked_sequence_file) then "-m" else ""} \
      ~{if (flanking_sequence) then "-f" else ""} \
      ~{if (data_file) then "-d" else ""} \
      ~{if (no_redundancy_elimination) then "-r" else ""} \
      ~{if defined(maximum_tr_length) then ("-l " +  '"' + maximum_tr_length + '"') else ""} \
      ~{if (ngs) then "-ngs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/trf:4.09.1--h516909a_0"
  }
  parameter_meta {
    masked_sequence_file: "masked sequence file"
    flanking_sequence: "flanking sequence"
    data_file: "data file"
    no_redundancy_elimination: "no redundancy elimination"
    maximum_tr_length: "maximum TR length expected (in millions) (eg, -l 3 or -l=3 for 3 million)\\nHuman genome HG38 would need -l 6"
    ngs: "more compact .dat output on multisequence files, returns 0 on success.\\nOutput is printed to the screen, not a file. You may pipe input in with\\nthis option using - for file name. Short 50 flanks are appended to .dat\\noutput."
    match: "= matching weight"
    mismatch: "= mismatching penalty"
  }
  output {
    File out_stdout = stdout()
  }
}