class: CommandLineTool
id: ref_eval_estimate_true_assembly.cwl
inputs:
- id: reference
  doc: The prefix of the reference built by rsem-prepare-reference. Required.
  type: string
  inputBinding:
    prefix: --reference
- id: expression
  doc: The prefix of the expression built by rsem-calculate-expression. Required.
  type: string
  inputBinding:
    prefix: --expression
- id: paired_end
  doc: If you have paired-end data, and you want to estimate the "true" scaffolded
    assembly, then include the --paired-end flag. In this case, rsem-calculate-expression
    needs to have been run with the --paired-end flag. (However, even if rsem-calculate-expression
    was run with the --paired-end flag, you can omit it here in order to generate
    an unscaffolded assembly. In this case, each mate will be treated as an independent
    read.)
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: assembly
  doc: A prefix to write the "true" assembly or sequence of assemblies to. The suffix
    _x.fa will be appended to this prefix, where x is the minimum overlap size. Required.
  type: string
  inputBinding:
    prefix: --assembly
- id: min_overlap
  doc: 'Either: * An integer that specifies how much overlap between two reads is
    required to merge two reads. For example, if --min-overlap=3, then only reads
    whose chosen alignments overlap by at least 3 bases will be joined into contigs.
    If --min-overlap=0, then only reads whose chosen alignments are contiguous (or
    overlap by a positive amount) will be joined into contigs. Or: * A pair of integers,
    separated by commas, specifying a range of overlap sizes, as described above.
    For example, if --min-overlap=2,4 is given, then three assemblies will be produced,
    corresponding to --min-overlap=2, --min-overlap=3, and --min-overlap=4 You might
    use this option to compute ideal assemblies at all overlap sizes, e.g., --min-overlap=0,76
    for 76-length reads. Default: 0.'
  type: string
  inputBinding:
    prefix: --min-overlap
- id: min_alignment_prob
  doc: 'A number between 0 and 1 (inclusive). Any alignment (of a read to a reference
    transcript) with posterior probability, as calculated by RSEM, strictly less than
    this value will be discarded. Noise reads, with posterior probability exactly
    0, are always discarded. Default: 0.'
  type: string
  inputBinding:
    prefix: --min-alignment-prob
- id: alignment_policy
  doc: 'The policy used to choose which alignment(s) of each read to use in constructing
    the "true" assembly. Options: * sample: For each read, sample a single alignment
    (to some reference transcript) according to the posterior probability that the
    read follows each alignment, as calculated by RSEM. * best: For each read, choose
    the alignment that maximizes the posterior probability mentioned above. Ties are
    broken arbitrarily but deterministically (the first alignment in the BAM file
    is used). * all: For each read, use all its alignments. Some reads might end up
    with more than one alignment. In that case, contigs will be made assuming that
    the read aligns to each place. (In other words, the read is effectively duplicated,
    with one copy per alignment.) This policy is applied after the thresholding implied
    by --min-alignment-prob. For example, if "--min-alignment-prob=0.10 --alignment-policy=sample"
    is given, then (first) all alignments with posterior probability less than 0.10
    will be discarded, and (second), for each read, an alignment will be sampled from
    among the remaining alignments, with the posterior distribution renormalized as
    appropriate. As another example, if "--min-alignment-prob=0.90 --alignment-policy=all"
    is given, then all alignments with posterior probability at least 0.90 will be
    used. Default: sample.'
  type: string
  inputBinding:
    prefix: --alignment-policy
outputs: []
cwlVersion: v1.1
baseCommand:
- ref-eval-estimate-true-assembly
