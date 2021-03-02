version 1.0

task Lasttrain {
  input {
    Boolean? verbose
    Boolean? rev_sym
    Boolean? mat_sym
    Boolean? gap_sym
    Int? pid
    Int? post_mask
    Int? sample_number
    Int? sample_length
    Int? match_score_default
    Int? mismatch_cost_default
    String? matchmismatch_score_matrix
    Int? gap_existence_cost
    Int? gap_extension_cost
    String? insertion_existence_cost
    String? insertion_extension_cost
    Int? query_letters_e
    Int? maximum_expected_alignments
    Int? reverse_forward_default
    Int? score_matrix_applies
    String? omit_gapless_alignments
    Int? maximum_initial_matches
    Int? use_initial_matches
    Int? number_parallel_threads
    Int? nx_ambiguous_sequence
    Int? input_format_fasta
    Int per_length
  }
  command <<<
    last_train \
      ~{per_length} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (rev_sym) then "--revsym" else ""} \
      ~{if (mat_sym) then "--matsym" else ""} \
      ~{if (gap_sym) then "--gapsym" else ""} \
      ~{if defined(pid) then ("--pid " +  '"' + pid + '"') else ""} \
      ~{if defined(post_mask) then ("--postmask " +  '"' + post_mask + '"') else ""} \
      ~{if defined(sample_number) then ("--sample-number " +  '"' + sample_number + '"') else ""} \
      ~{if defined(sample_length) then ("--sample-length " +  '"' + sample_length + '"') else ""} \
      ~{if defined(match_score_default) then ("-r " +  '"' + match_score_default + '"') else ""} \
      ~{if defined(mismatch_cost_default) then ("-q " +  '"' + mismatch_cost_default + '"') else ""} \
      ~{if defined(matchmismatch_score_matrix) then ("-p " +  '"' + matchmismatch_score_matrix + '"') else ""} \
      ~{if defined(gap_existence_cost) then ("-a " +  '"' + gap_existence_cost + '"') else ""} \
      ~{if defined(gap_extension_cost) then ("-b " +  '"' + gap_extension_cost + '"') else ""} \
      ~{if defined(insertion_existence_cost) then ("-A " +  '"' + insertion_existence_cost + '"') else ""} \
      ~{if defined(insertion_extension_cost) then ("-B " +  '"' + insertion_extension_cost + '"') else ""} \
      ~{if defined(query_letters_e) then ("-D " +  '"' + query_letters_e + '"') else ""} \
      ~{if defined(maximum_expected_alignments) then ("-E " +  '"' + maximum_expected_alignments + '"') else ""} \
      ~{if defined(reverse_forward_default) then ("-s " +  '"' + reverse_forward_default + '"') else ""} \
      ~{if defined(score_matrix_applies) then ("-S " +  '"' + score_matrix_applies + '"') else ""} \
      ~{if defined(omit_gapless_alignments) then ("-C " +  '"' + omit_gapless_alignments + '"') else ""} \
      ~{if defined(maximum_initial_matches) then ("-m " +  '"' + maximum_initial_matches + '"') else ""} \
      ~{if defined(use_initial_matches) then ("-k " +  '"' + use_initial_matches + '"') else ""} \
      ~{if defined(number_parallel_threads) then ("-P " +  '"' + number_parallel_threads + '"') else ""} \
      ~{if defined(nx_ambiguous_sequence) then ("-X " +  '"' + nx_ambiguous_sequence + '"') else ""} \
      ~{if defined(input_format_fasta) then ("-Q " +  '"' + input_format_fasta + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "show more details of intermediate steps"
    rev_sym: "force reverse-complement symmetry"
    mat_sym: "force symmetric substitution matrix"
    gap_sym: "force insertion/deletion symmetry"
    pid: "skip alignments with > PID% identity (default: 100)"
    post_mask: "skip mostly-lowercase alignments (default=1)"
    sample_number: "number of random sequence samples (default: 500)"
    sample_length: "length of each sample (default: 2000)"
    match_score_default: "match score (default: 6 if Q>0, else 5)"
    mismatch_cost_default: "mismatch cost (default: 18 if Q>0, else 5)"
    matchmismatch_score_matrix: "match/mismatch score matrix"
    gap_existence_cost: "gap existence cost (default: 21 if Q>0, else 15)"
    gap_extension_cost: "gap extension cost (default: 9 if Q>0, else 3)"
    insertion_existence_cost: "insertion existence cost"
    insertion_extension_cost: "insertion extension cost"
    query_letters_e: "query letters per random alignment (default: 1e6)"
    maximum_expected_alignments: "maximum expected alignments per square giga"
    reverse_forward_default: "0=reverse, 1=forward, 2=both (default: 2 if DNA, else\\n1)"
    score_matrix_applies: "score matrix applies to forward strand of: 0=reference,\\n1=query (default: 1)"
    omit_gapless_alignments: "omit gapless alignments in COUNT others with > score-"
    maximum_initial_matches: "maximum initial matches per query position (default:\\n10)"
    use_initial_matches: "use initial matches starting at every STEP-th position\\nin each query (default: 1)"
    number_parallel_threads: "number of parallel threads"
    nx_ambiguous_sequence: "N/X is ambiguous in: 0=neither sequence, 1=reference,\\n2=query, 3=both (default=0)"
    input_format_fasta: "input format: 0=fasta or fastq-ignore, 1=fastq-sanger\\n(default=fasta)\\n"
    per_length: "-T NUMBER          type of alignment: 0=local, 1=overlap (default: 0)"
  }
  output {
    File out_stdout = stdout()
  }
}