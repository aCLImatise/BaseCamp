version 1.0

task CleanGenes {
  input {
    Boolean? start
    Boolean? stop
    Boolean? splice
    Boolean? f_shift
    Boolean? nonsense
    Boolean? conserved
    Int? n_limit
    Boolean? clean_gaps
    Boolean? in_del_strict
    Boolean? splice_strict
    String? group_by
    File? msa_format
    File? refseq
    Int? offset_five
    Int? offset_three
    File? log
    String? machine_log
    File? stats
    File? discards
    File? no_output
    String gff_fname
    String msa_fname
  }
  command <<<
    clean_genes \
      ~{gff_fname} \
      ~{msa_fname} \
      ~{if (start) then "--start" else ""} \
      ~{if (stop) then "--stop" else ""} \
      ~{if (splice) then "--splice" else ""} \
      ~{if (f_shift) then "--fshift" else ""} \
      ~{if (nonsense) then "--nonsense" else ""} \
      ~{if (conserved) then "--conserved" else ""} \
      ~{if defined(n_limit) then ("--N-limit " +  '"' + n_limit + '"') else ""} \
      ~{if (clean_gaps) then "--clean-gaps" else ""} \
      ~{if (in_del_strict) then "--indel-strict" else ""} \
      ~{if (splice_strict) then "--splice-strict" else ""} \
      ~{if defined(group_by) then ("--groupby " +  '"' + group_by + '"') else ""} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if defined(offset_five) then ("--offset5 " +  '"' + offset_five + '"') else ""} \
      ~{if defined(offset_three) then ("--offset3 " +  '"' + offset_three + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(machine_log) then ("--machine-log " +  '"' + machine_log + '"') else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if defined(discards) then ("--discards " +  '"' + discards + '"') else ""} \
      ~{if (no_output) then "--no-output" else ""}
  >>>
  parameter_meta {
    start: "Require conserved start codons (all species)"
    stop: "Require conserved stop codons (all species)"
    splice: "Require conserved splice sites (all species).  By default,\\nonly GT-AG, GC-AG, and AT-AC splice sites are allowed (see also\\n--splice-strict)"
    f_shift: "Require that no frame-shift gap is present in any species.  Frame\\nshifts are evaluated with respect to the reference sequence.  Gaps\\nthat have non-multiple-of-three lengths are allowed if\\ncompensatory gaps occur nearby (see source code for details)."
    nonsense: "Require that no premature stop codon is present in any species."
    conserved: "Implies --start, --stop, --splice, --fshift, and --nonsense.\\nRecommended option for cross-species analysis."
    n_limit: "Maximum fraction of bases aligned to CDSs that are Ns in any\\nspecies (<f> must be between 0 and 1).  Default is 0.05.  Set to 1\\nto allow any number of Ns."
    clean_gaps: "Require all cds gaps to be multiples of three in length.  Can be\\nused with --conserved."
    in_del_strict: "Implies --clean_gaps, usually used with --conserved.  Prohibits\\noverlapping cds gaps in different sequences, gaps near cds\\nboundaries, and gaps in the reference sequence within and between\\nflanking features (splice sites, etc.; see code for details).\\nDesigned for use in training a phylo-HMM with an indel model."
    splice_strict: "Implies --splice.  Allow only GT-AG canonical splice sites.  Useful\\nwhen training a gene finder with a simple model for splice sites."
    group_by: "Group features according to specified tag (default\\n\\\"transcript_id\\\").  If any feature within a group fails, the\\nentire group will be discarded.  By choosing to group features\\naccording to different criteria, you can make the program\\n\\\"clean\\\" the data set at different levels.  For example, to\\nclean at the level of individual exons, add a tag like\\n\\\"exon_id\\\" to indicate exons (see the program \\\"refeature\\\"),\\nand then invoke clean_genes with \\\"--groupby exon_id\\\"."
    msa_format: "|PHYLIP|MPM|MAF|SS\\nAlignment file format.  Default is to guess format from file\\ncontents."
    refseq: "(Required with --msa-format MAF)  Complete reference\\nsequence for alignment (FASTA format)."
    offset_five: "(Default 0)  Offset of canonical \\\"GT\\\" with respect to boundary\\non *intron side* of annotated 5' splice sites.  Useful with\\nannotations that describe a window around the canonical splice site."
    offset_three: "(Default 0)  Offset of canonical \\\"AG\\\" with respect to boundary\\non intron side of annotated 3' splice sites."
    log: "Write human-readable log to specified file."
    machine_log: "Like --log, but produces more concise, machine-readable log."
    stats: "Write statistics on retained and discarded features to specified file."
    discards: "Write discarded features to specified file."
    no_output: "Suppress output of \\\"cleaned\\\" features to stdout.  Useful if only\\nlog file and/or stats are of interest."
    gff_fname: ""
    msa_fname: ""
  }
  output {
    File out_stdout = stdout()
    File out_no_output = "${in_no_output}"
  }
}