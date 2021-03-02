version 1.0

task FindErrors {
  input {
    Boolean? seqstore_path_sequence
    Boolean? ovlstore_path_overlap
    Boolean? bgn_end_only
    Boolean? outputname_write_corrections
    Boolean? errorrate_expected_rate
    Boolean? minoverlap
    Boolean? numthreads
    Boolean? degreethreshold_set_keep
    Boolean? kmersize_exactmatch_region
    Boolean? do_use_haploct
    Boolean? votelen_number_vote
    Boolean? endexcludelen_length_exclude
  }
  command <<<
    findErrors \
      ~{if (seqstore_path_sequence) then "-S" else ""} \
      ~{if (ovlstore_path_overlap) then "-O" else ""} \
      ~{if (bgn_end_only) then "-R" else ""} \
      ~{if (outputname_write_corrections) then "-o" else ""} \
      ~{if (errorrate_expected_rate) then "-e" else ""} \
      ~{if (minoverlap) then "-l" else ""} \
      ~{if (numthreads) then "-t" else ""} \
      ~{if (degreethreshold_set_keep) then "-d" else ""} \
      ~{if (kmersize_exactmatch_region) then "-k" else ""} \
      ~{if (do_use_haploct) then "-p" else ""} \
      ~{if (votelen_number_vote) then "-V" else ""} \
      ~{if (endexcludelen_length_exclude) then "-x" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seqstore_path_sequence: "seqStore           path to a sequence store"
    ovlstore_path_overlap: "ovlStore           path to an overlap store"
    bgn_end_only: "bgn end            only compute for reads bgn-end"
    outputname_write_corrections: "output-name        write corrections to 'output-name'"
    errorrate_expected_rate: "error-rate         expected error rate in alignments"
    minoverlap: "min-overlap"
    numthreads: "num-threads"
    degreethreshold_set_keep: "degree-threshold   set keep flag if fewer than this many overlaps"
    kmersize_exactmatch_region: "kmer-size          minimum exact-match region to prevent change"
    do_use_haploct: "don't use the haplo_ct"
    votelen_number_vote: "vote-len           number of exact match bases around an error to vote to change"
    endexcludelen_length_exclude: "end-exclude-len    length of end of exact match to exclude in preventing change"
  }
  output {
    File out_stdout = stdout()
  }
}