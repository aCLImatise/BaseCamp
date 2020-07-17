version 1.0

task Makeprotseq {
  input {
    Boolean? pep_stats_file
    Boolean? amount
    Boolean? length
  }
  command <<<
    makeprotseq \
      ~{true="-pepstatsfile" false="" pep_stats_file} \
      ~{true="-amount" false="" amount} \
      ~{true="-length" false="" length}
  >>>
  parameter_meta {
    pep_stats_file: "infile     This file should be a pepstats output file. Protein sequences will be created with the composition in the pepstats output file."
    amount: "integer    [100] Number of sequences created (Integer 1 or more)"
    length: "integer    [100] Length of each sequence (Integer 1 or more)"
  }
}