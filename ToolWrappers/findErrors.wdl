version 1.0

task FindErrors {
  input {
    Boolean? seqstore_path_sequence
    Boolean? path_overlap_store
    Boolean? bgn_end_compute
    Boolean? outputname_write_corrections
    Boolean? errorrate_expected_rate
    Boolean? minoverlap
    Boolean? numthreads
    Boolean? set_keep_flag
    Boolean? kmersize_minimum_exactmatch
    Boolean? do_use_haploct
    Boolean? votelen_number_exact
    Boolean? endexcludelen_length_exclude
  }
  command <<<
    findErrors \
      ~{if (seqstore_path_sequence) then "-S" else ""} \
      ~{if (path_overlap_store) then "-O" else ""} \
      ~{if (bgn_end_compute) then "-R" else ""} \
      ~{if (outputname_write_corrections) then "-o" else ""} \
      ~{if (errorrate_expected_rate) then "-e" else ""} \
      ~{if (minoverlap) then "-l" else ""} \
      ~{if (numthreads) then "-t" else ""} \
      ~{if (set_keep_flag) then "-d" else ""} \
      ~{if (kmersize_minimum_exactmatch) then "-k" else ""} \
      ~{if (do_use_haploct) then "-p" else ""} \
      ~{if (votelen_number_exact) then "-V" else ""} \
      ~{if (endexcludelen_length_exclude) then "-x" else ""}
  >>>
  parameter_meta {
    seqstore_path_sequence: "seqStore           path to a sequence store"
    path_overlap_store: "ovlStore           path to an overlap store"
    bgn_end_compute: "bgn end            only compute for reads bgn-end"
    outputname_write_corrections: "output-name        write corrections to 'output-name'"
    errorrate_expected_rate: "error-rate         expected error rate in alignments"
    minoverlap: "min-overlap"
    numthreads: "num-threads"
    set_keep_flag: "degree-threshold   set keep flag if fewer than this many overlaps"
    kmersize_minimum_exactmatch: "kmer-size          minimum exact-match region to prevent change"
    do_use_haploct: "don't use the haplo_ct"
    votelen_number_exact: "vote-len           number of exact match bases around an error to vote to change"
    endexcludelen_length_exclude: "end-exclude-len    length of end of exact match to exclude in preventing change"
  }
  output {
    File out_stdout = stdout()
  }
}