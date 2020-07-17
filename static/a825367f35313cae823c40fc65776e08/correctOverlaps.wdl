version 1.0

task CorrectOverlaps {
  input {
    Boolean? path_sequence_store
    Boolean? ovlstore_path_overlap
    Boolean? bgn_end_only
    Boolean? inputname_read_corrections
    Boolean? outputname_write_rates
    Boolean? numthreads_used_thread
    Boolean? ignore_overlaps_shorter
    Boolean? maxerate_ignore_overlaps
    Boolean? check_trival_dna
    String seq_store
    File path
    String to
    String a
    String sequence
    String store
  }
  command <<<
    correctOverlaps \
      ~{seq_store} \
      ~{path} \
      ~{to} \
      ~{a} \
      ~{sequence} \
      ~{store} \
      ~{true="-S" false="" path_sequence_store} \
      ~{true="-O" false="" ovlstore_path_overlap} \
      ~{true="-R" false="" bgn_end_only} \
      ~{true="-c" false="" inputname_read_corrections} \
      ~{true="-o" false="" outputname_write_rates} \
      ~{true="-t" false="" numthreads_used_thread} \
      ~{true="-l" false="" ignore_overlaps_shorter} \
      ~{true="-e" false="" maxerate_ignore_overlaps} \
      ~{true="-s" false="" check_trival_dna}
  >>>
  parameter_meta {
    path_sequence_store: "seqStore           path to a sequence store"
    ovlstore_path_overlap: "ovlStore           path to an overlap store"
    bgn_end_only: "bgn end            only compute for reads bgn-end"
    inputname_read_corrections: "input-name         read corrections from 'input-name'"
    outputname_write_rates: "output-name        write updated error rates to 'output-name'"
    numthreads_used_thread: "num-threads        not used; only one thread used"
    ignore_overlaps_shorter: "min-len            ignore overlaps shorter than this"
    maxerate_ignore_overlaps: "max-erate s        ignore overlaps higher than this error"
    check_trival_dna: "check trival dna   ignore alignment errors in simple sequence"
    seq_store: ""
    path: ""
    to: ""
    a: ""
    sequence: ""
    store: ""
  }
}