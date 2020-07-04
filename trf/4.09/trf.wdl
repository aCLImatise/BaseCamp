version 1.0

task Trf {
  input {
    Boolean? masked_sequence_file
    Boolean? flanking_sequence
    Boolean? data_file
    Boolean? no_redundancy_elimination
    String? maximum_tr_length
    Boolean? ngs
  }
  command <<<
    trf \
      ~{true="-m" false="" masked_sequence_file} \
      ~{true="-f" false="" flanking_sequence} \
      ~{true="-d" false="" data_file} \
      ~{true="-r" false="" no_redundancy_elimination} \
      ~{if defined(maximum_tr_length) then ("-l " +  '"' + maximum_tr_length + '"') else ""} \
      ~{true="-ngs" false="" ngs}
  >>>
  parameter_meta {
    masked_sequence_file: "masked sequence file"
    flanking_sequence: "flanking sequence"
    data_file: "data file"
    no_redundancy_elimination: "no redundancy elimination"
    maximum_tr_length: "maximum TR length expected (in millions) (eg, -l 3 or -l=3 for 3 million) Human genome HG38 would need -l 6"
    ngs: "more compact .dat output on multisequence files, returns 0 on success. Output is printed to the screen, not a file. You may pipe input in with this option using - for file name. Short 50 flanks are appended to .dat output."
  }
}