version 1.0

task RnazSelectSeqspl {
  input {
    Int? num_seqs
    Int? num_samples
    Int? opt_id
    Int? max_id
    Boolean? no_reference
    Boolean? man
  }
  command <<<
    rnazSelectSeqs_pl \
      ~{if defined(num_seqs) then ("--num-seqs " +  '"' + num_seqs + '"') else ""} \
      ~{if defined(num_samples) then ("--num-samples " +  '"' + num_samples + '"') else ""} \
      ~{if defined(opt_id) then ("--opt-id " +  '"' + opt_id + '"') else ""} \
      ~{if defined(max_id) then ("--max-id " +  '"' + max_id + '"') else ""} \
      ~{if (no_reference) then "--no-reference" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    num_seqs: "Number of sequences in the output alignment(s). (Default:6)"
    num_samples: "Number of output alignments (Default: 1)"
    opt_id: "The resulting alignment(s) is (are) optimized for this value of\\nmean pairwise identity (in percent, default: 80)"
    max_id: "Sequences from pairs with pairwise identity higher than X% are\\nremoved (default: 99, i.e. only almost identical sequences are\\nremoved)"
    no_reference: "By default the first sequence (=reference sequence) is always\\npresent in the output alignment(s). If you do not care having it\\nremoved, set this flag."
    man: "Prints a detailed manual page and exits."
  }
  output {
    File out_stdout = stdout()
  }
}