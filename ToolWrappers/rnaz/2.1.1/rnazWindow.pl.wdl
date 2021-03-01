version 1.0

task RnazWindowpl {
  input {
    Int? window
    Int? slide
    Boolean? max_length
    Int? max_gap
    Int? max_masked
    Int? min_id
    Int? min_seqs
    Int? max_seqs
    Int? num_samples
    Int? min_length
    Int? opt_id
    Int? max_id
    Boolean? both_strands
    Boolean? no_reference
    Boolean? no_range_check
    Boolean? verbose
    Boolean? man
  }
  command <<<
    rnazWindow_pl \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(slide) then ("--slide " +  '"' + slide + '"') else ""} \
      ~{if (max_length) then "--max-length" else ""} \
      ~{if defined(max_gap) then ("--max-gap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(max_masked) then ("--max-masked " +  '"' + max_masked + '"') else ""} \
      ~{if defined(min_id) then ("--min-id " +  '"' + min_id + '"') else ""} \
      ~{if defined(min_seqs) then ("--min-seqs " +  '"' + min_seqs + '"') else ""} \
      ~{if defined(max_seqs) then ("--max-seqs " +  '"' + max_seqs + '"') else ""} \
      ~{if defined(num_samples) then ("--num-samples " +  '"' + num_samples + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(opt_id) then ("--opt-id " +  '"' + opt_id + '"') else ""} \
      ~{if defined(max_id) then ("--max-id " +  '"' + max_id + '"') else ""} \
      ~{if (both_strands) then "--both-strands" else ""} \
      ~{if (no_reference) then "--no-reference" else ""} \
      ~{if (no_range_check) then "--no-rangecheck" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    window: "Size of the window (Default: 120)"
    slide: "Step size (Default: 120)"
    max_length: "Slice only alignments longer than N columns. This means blocks\\nlonger than the window size given by --window but shorter than N\\nare kept intact and not sliced. Per default this length is set\\nto the window size given by --window (or 120 by default)."
    max_gap: "Maximum fraction of gaps. If a reference sequence is used (i.e.\\n\\\"--no-reference\\\" is not set), each sequence is compared to the\\nreference sequence and if in the pairwise comparison the\\nfraction of columns with gaps is higher than X the sequence is\\ndiscarded. If no reference sequence is used, all sequences with\\na fraction of gaps higher than X are discarded. (Default: 0.25)"
    max_masked: "Maximum fraction of masked (=lowercase letters) in a sequence.\\nAll sequences with a fraction of more than X lowercase letters\\nare discarded. This is usually used for excluding repeat\\nsequences marked by \\\"RepeatMasker\\\" but any other information can\\nbe encoded by using lowercase letters. (Default: 0.1)"
    min_id: "Discard alignment windows with an overall mean pairwise identity\\nsmaller than X%. (Default: 50)"
    min_seqs: "Minimum number of sequences in an alignment. Discard any windows\\nwith less than N sequences (Default:2)."
    max_seqs: "Maximum number of sequences in an alignment. If the number of\\nsequences in a window is higher than N, a subset of sequences is\\nused with exactly N sequences. The greedy algorithm of the\\nprogram \\\"rnazSelectSeqs.pl\\\" is used which optimizes for a user\\nspecified mean pairwise identity (see \\\"--opt-id\\\"). (Default: 6)"
    num_samples: "Number of different subsets of sequences that is sampled if\\nthere are more sequences in the alignment than \\\"--max-seqs\\\".\\n(Default: 1)"
    min_length: "Minimum number of columns of an alignment slice. After removing\\nsequences from the alignment, ``all-gap\\\" columns are removed. If\\nthe resulting alignment has fewer than N columns, the complete\\nalignment is discarded. Default: 50"
    opt_id: "If the number of sequences has to be reduced (see \\\"--max-seqs\\\")\\na subset of sequences is chosen which is optimized for this\\nvalue of mean pairwise identity. (In percent, default: 80)"
    max_id: "One sequence from pairs with pairwise identity higher than X %\\nthis is removed (default: 99, i.e. only almost identical\\nsequences are removed) NOT IMPLEMENTED"
    both_strands: "Output forward, reverse complement or both of the sequences in\\nthe windows. Please note: \\\"RNAz\\\" has the same options, so if you\\nuse \\\"rnazWindow.pl\\\" for an RNAz screen, we recommend to set the\\noption directly in \\\"RNAz\\\" and leave the default here. (Default:\\n---forward)"
    no_reference: "By default the first sequence is interpreted as reference\\nsequence. This means, for example, that if the reference\\nsequence is removed during filtering steps the complete\\nalignment is discarded. Also, if there are too many sequences in\\nthe alignment, the reference sequence is never removed when\\nchoosing an appropriate subset. Having a reference sequence is\\ncrucial if you are doing screens of genomic regions. For some\\nother applications it might not be necessary and in such cases\\nyou can change the default behaviour by setting this option."
    no_range_check: "By default, all sequences of all windows are discarded, if the\\nlength or base composition is outside the training range of\\nRNAz, independent of the window-size commandline parameter.\\nHowever with the flag --no-rangecheck such sequences outside the\\ntraining range are not discarded. As of version 2.0, RNAz can\\ncope with sequences outside this traning range. However the same\\nquality of the RNAz results cannot be guaranteed if sequences\\noutside the default range are present."
    verbose: "Verbose output on STDERR, describing all performed filtering\\nsteps."
    man: "Prints a detailed manual page and exits."
  }
  output {
    File out_stdout = stdout()
  }
}