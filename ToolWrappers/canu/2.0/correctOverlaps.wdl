version 1.0

task CorrectOverlaps {
  input {
    Boolean? seqstore_path_sequence
    Boolean? ovlstore_path_overlap
    Boolean? bgn_end_only
    Boolean? inputname_read_corrections
    Boolean? outputname_write_rates
    Boolean? numthreads_used_thread
    Boolean? minlen_ignore_overlaps
    Boolean? maxerate_s_ignore
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
      ~{if (seqstore_path_sequence) then "-S" else ""} \
      ~{if (ovlstore_path_overlap) then "-O" else ""} \
      ~{if (bgn_end_only) then "-R" else ""} \
      ~{if (inputname_read_corrections) then "-c" else ""} \
      ~{if (outputname_write_rates) then "-o" else ""} \
      ~{if (numthreads_used_thread) then "-t" else ""} \
      ~{if (minlen_ignore_overlaps) then "-l" else ""} \
      ~{if (maxerate_s_ignore) then "-e" else ""} \
      ~{if (check_trival_dna) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seqstore_path_sequence: "seqStore           path to a sequence store"
    ovlstore_path_overlap: "ovlStore           path to an overlap store"
    bgn_end_only: "bgn end            only compute for reads bgn-end"
    inputname_read_corrections: "input-name         read corrections from 'input-name'"
    outputname_write_rates: "output-name        write updated error rates to 'output-name'"
    numthreads_used_thread: "num-threads        not used; only one thread used"
    minlen_ignore_overlaps: "min-len            ignore overlaps shorter than this"
    maxerate_s_ignore: "max-erate s        ignore overlaps higher than this error"
    check_trival_dna: "check trival dna   ignore alignment errors in simple sequence"
    seq_store: ""
    path: ""
    to: ""
    a: ""
    sequence: ""
    store: ""
  }
  output {
    File out_stdout = stdout()
  }
}