version 1.0

task FindErrors {
  input {
    Boolean? path_sequence_store
    Boolean? ovlstore_path_overlap
    Boolean? bgn_end_only
    Boolean? outputname_write_corrections
    Boolean? errorrate_expected_rate
    Boolean? minoverlap_
    Boolean? numthreads_
    Boolean? degreethreshold_set_keep
    Boolean? kmersize_minimum_exactmatch
    Boolean? do_use_haploct
    Boolean? votelen_number_exact
    Boolean? length_end_exclude
  }
  command <<<
    findErrors \
      ~{true="-S" false="" path_sequence_store} \
      ~{true="-O" false="" ovlstore_path_overlap} \
      ~{true="-R" false="" bgn_end_only} \
      ~{true="-o" false="" outputname_write_corrections} \
      ~{true="-e" false="" errorrate_expected_rate} \
      ~{true="-l" false="" minoverlap_} \
      ~{true="-t" false="" numthreads_} \
      ~{true="-d" false="" degreethreshold_set_keep} \
      ~{true="-k" false="" kmersize_minimum_exactmatch} \
      ~{true="-p" false="" do_use_haploct} \
      ~{true="-V" false="" votelen_number_exact} \
      ~{true="-x" false="" length_end_exclude}
  >>>
  parameter_meta {
    path_sequence_store: "seqStore           path to a sequence store"
    ovlstore_path_overlap: "ovlStore           path to an overlap store"
    bgn_end_only: "bgn end            only compute for reads bgn-end"
    outputname_write_corrections: "output-name        write corrections to 'output-name'"
    errorrate_expected_rate: "error-rate         expected error rate in alignments"
    minoverlap_: "min-overlap        "
    numthreads_: "num-threads        "
    degreethreshold_set_keep: "degree-threshold   set keep flag if fewer than this many overlaps"
    kmersize_minimum_exactmatch: "kmer-size          minimum exact-match region to prevent change"
    do_use_haploct: "don't use the haplo_ct"
    votelen_number_exact: "vote-len           number of exact match bases around an error to vote to change"
    length_end_exclude: "end-exclude-len    length of end of exact match to exclude in preventing change"
  }
}