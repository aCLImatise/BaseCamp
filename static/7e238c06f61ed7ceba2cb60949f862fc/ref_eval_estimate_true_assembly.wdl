version 1.0

task Refevalestimatetrueassembly {
  input {
    String? reference
    String? expression
    Boolean? paired_end
    Int? assembly
    Int? min_overlap
    Int? min_alignment_prob
    Int? alignment_policy
    String alignments_dot
  }
  command <<<
    ref_eval_estimate_true_assembly \
      ~{alignments_dot} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(expression) then ("--expression " +  '"' + expression + '"') else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(min_alignment_prob) then ("--min-alignment-prob " +  '"' + min_alignment_prob + '"') else ""} \
      ~{if defined(alignment_policy) then ("--alignment-policy " +  '"' + alignment_policy + '"') else ""}
  >>>
  parameter_meta {
    reference: "The prefix of the reference built by rsem-prepare-reference.\\nRequired."
    expression: "The prefix of the expression built by\\nrsem-calculate-expression. Required."
    paired_end: "If you have paired-end data, and you want to estimate the\\n\\\"true\\\" scaffolded assembly, then include the --paired-end\\nflag. In this case, rsem-calculate-expression needs to have\\nbeen run with the --paired-end flag. (However, even if\\nrsem-calculate-expression was run with the --paired-end flag,\\nyou can omit it here in order to generate an unscaffolded\\nassembly. In this case, each mate will be treated as an\\nindependent read.)"
    assembly: "A prefix to write the \\\"true\\\" assembly or sequence of\\nassemblies to. The suffix _x.fa will be appended to this\\nprefix, where x is the minimum overlap size. Required."
    min_overlap: "Either:\\n* An integer that specifies how much overlap between two\\nreads is required to merge two reads. For example, if\\n--min-overlap=3, then only reads whose chosen alignments\\noverlap by at least 3 bases will be joined into contigs.\\nIf --min-overlap=0, then only reads whose chosen\\nalignments are contiguous (or overlap by a positive\\namount) will be joined into contigs.\\nOr:\\n* A pair of integers, separated by commas, specifying a\\nrange of overlap sizes, as described above. For example,\\nif --min-overlap=2,4 is given, then three assemblies\\nwill be produced, corresponding to --min-overlap=2,\\n--min-overlap=3, and --min-overlap=4 You might use this\\noption to compute ideal assemblies at all overlap sizes,\\ne.g., --min-overlap=0,76 for 76-length reads.\\nDefault: 0."
    min_alignment_prob: "A number between 0 and 1 (inclusive). Any alignment (of a\\nread to a reference transcript) with posterior probability,\\nas calculated by RSEM, strictly less than this value will be\\ndiscarded. Noise reads, with posterior probability exactly 0,\\nare always discarded. Default: 0."
    alignment_policy: "The policy used to choose which alignment(s) of each read to\\nuse in constructing the \\\"true\\\" assembly. Options:\\n* sample: For each read, sample a single alignment (to\\nsome reference transcript) according to the posterior\\nprobability that the read follows each alignment, as\\ncalculated by RSEM.\\n* best: For each read, choose the alignment that maximizes\\nthe posterior probability mentioned above. Ties are\\nbroken arbitrarily but deterministically (the first\\nalignment in the BAM file is used).\\n* all: For each read, use all its alignments. Some reads\\nmight end up with more than one alignment. In that case,\\ncontigs will be made assuming that the read aligns to\\neach place. (In other words, the read is effectively\\nduplicated, with one copy per alignment.)\\nThis policy is applied after the thresholding implied by\\n--min-alignment-prob. For example, if\\n\\\"--min-alignment-prob=0.10 --alignment-policy=sample\\\" is\\ngiven, then (first) all alignments with posterior probability\\nless than 0.10 will be discarded, and (second), for each\\nread, an alignment will be sampled from among the remaining\\nalignments, with the posterior distribution renormalized as\\nappropriate. As another example, if\\n\\\"--min-alignment-prob=0.90 --alignment-policy=all\\\" is given,\\nthen all alignments with posterior probability at least 0.90\\nwill be used.\\nDefault: sample.\\n"
    alignments_dot: "[1] Bo Li*, Nathanael Fillmore*, Yongsheng Bai, Mike Collins, James"
  }
  output {
    File out_stdout = stdout()
  }
}