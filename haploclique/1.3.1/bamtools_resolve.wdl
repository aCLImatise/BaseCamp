version 1.0

task BamtoolsResolve {
  input {
    String? in
    String? out
    String? stats
    Boolean? force_compression
    Boolean? make_stats
    Boolean? mark_pairs
    Boolean? two_pass
    String? min_mq
    String? ci
    String? umt
    Boolean? force
    String mode
  }
  command <<<
    bamtools resolve \
      ~{mode} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(stats) then ("-stats " +  '"' + stats + '"') else ""} \
      ~{true="-forceCompression" false="" force_compression} \
      ~{true="-makeStats" false="" make_stats} \
      ~{true="-markPairs" false="" mark_pairs} \
      ~{true="-twoPass" false="" two_pass} \
      ~{if defined(min_mq) then ("-minMQ " +  '"' + min_mq + '"') else ""} \
      ~{if defined(ci) then ("-ci " +  '"' + ci + '"') else ""} \
      ~{if defined(umt) then ("-umt " +  '"' + umt + '"') else ""} \
      ~{true="-force" false="" force}
  >>>
  parameter_meta {
    in: "the input BAM file(s) [stdin]"
    out: "the output BAM file [stdout]"
    stats: "input/output stats file, depending on selected mode (see below). This file is human-readable, storing fragment length data generated per read group, as well as the options used to configure the -makeStats mode"
    force_compression: "if results are sent to stdout (like when piping to another tool), default behavior is to leave output uncompressed.Use this flag to override and force compression. This feature is disabled in -makeStats mode."
    make_stats: "generates a fragment-length stats file from the input BAM. Data is written to file specified using the -stats option. MarkPairs Mode Settings are DISABLED."
    mark_pairs: "generates an output BAM with alignments marked with proper-pair status. Stats data is read from file specified using the -stats option. MakeStats Mode Settings are DISABLED"
    two_pass: "combines the -makeStats & -markPairs modes into a single command. However, due to the two-pass nature of paired-end resolution, piping BAM data via stdin is DISABLED. You must supply an explicit input BAM file. Output BAM may be piped to stdout, however, if desired. All MakeStats & MarkPairs Mode Settings are available. The intermediate stats file is not necessary, but if the -stats options is used, then one will be generated. You may find this useful for documentation purposes."
    min_mq: "minimum map quality. Used in -makeStats mode as a heuristic for determining a mate's uniqueness. Used in -markPairs mode as a filter for marking candidate proper pairs."
    ci: "confidence interval. Set min/max fragment lengths such that we capture this fraction of pairs"
    umt: "unused model threshold. The resolve tool considers 8 possible orientation models for pairs. The top 2 are selected for later use when actually marking alignments. This value determines the cutoff for marking a read group as ambiguous. Meaning that if the ratio of the number of alignments from bottom 6 models to the top 2 is greater than this threshold, then the read group is flagged as ambiguous. By default, NO alignments from ambiguous read groups will be marked as proper pairs. You may override this behavior with the -force option in -markPairs mode"
    force: "forces all read groups to be marked according to their top 2 'orientation models'. When generating stats, the 2 (out of 8 possible) models with the most observations are chosen as the top models for each read group. If the remaining 6 models account for more than some threshold ([default=10%], see -umt), then the read group is marked as ambiguous. The default behavior is that for an ambiguous read group, NONE of its alignments are marked as proper-pairs. By setting this option, a read group's ambiguity flag will be ignored, and all of its alignments will be compared to the top 2 models."
    mode: ""
  }
}