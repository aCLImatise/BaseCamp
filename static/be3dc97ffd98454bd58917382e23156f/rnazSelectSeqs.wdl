version 1.0

task RnazSelectSeqs.pl {
  input {
    String? num_seqs
    String? num_samples
    String? opt_id
    String? max_id
    Boolean? no_reference
    Boolean? man
    File? file
  }
  command <<<
    rnazSelectSeqs.pl \
      ~{file} \
      ~{if defined(num_seqs) then ("--num-seqs " +  '"' + num_seqs + '"') else ""} \
      ~{if defined(num_samples) then ("--num-samples " +  '"' + num_samples + '"') else ""} \
      ~{if defined(opt_id) then ("--opt-id " +  '"' + opt_id + '"') else ""} \
      ~{if defined(max_id) then ("--max-id " +  '"' + max_id + '"') else ""} \
      ~{true="--no-reference" false="" no_reference} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    num_seqs: "Number of sequences in the output alignment(s). (Default:6)"
    num_samples: "Number of output alignments (Default: 1)"
    opt_id: "The resulting alignment(s) is (are) optimized for this value of mean pairwise identity (in percent, default: 80)"
    max_id: "Sequences from pairs with pairwise identity higher than X% are removed (default: 99, i.e. only almost identical sequences are removed)"
    no_reference: "By default the first sequence (=reference sequence) is always present in the output alignment(s). If you do not care having it removed, set this flag."
    man: "Prints a detailed manual page and exits."
    file: ""
  }
}