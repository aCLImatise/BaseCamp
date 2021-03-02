version 1.0

task Bamtools241Resolve {
  input {
    File? in
    File? out
    File? stats
    Boolean? force_compression
    Boolean? make_stats
    File? mark_pairs
    Boolean? two_pass
    String? min_mq
    Int? ci
    Int? umt
    Boolean? force
    String purposes_dot
  }
  command <<<
    bamtools_2_4_1 resolve \
      ~{purposes_dot} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(stats) then ("-stats " +  '"' + stats + '"') else ""} \
      ~{if (force_compression) then "-forceCompression" else ""} \
      ~{if (make_stats) then "-makeStats" else ""} \
      ~{if (mark_pairs) then "-markPairs" else ""} \
      ~{if (two_pass) then "-twoPass" else ""} \
      ~{if defined(min_mq) then ("-minMQ " +  '"' + min_mq + '"') else ""} \
      ~{if defined(ci) then ("-ci " +  '"' + ci + '"') else ""} \
      ~{if defined(umt) then ("-umt " +  '"' + umt + '"') else ""} \
      ~{if (force) then "-force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "the input BAM file(s) [stdin]"
    out: "the output BAM file [stdout]"
    stats: "input/output stats file,\\ndepending on selected mode (see below).\\nThis file is human-readable, storing\\nfragment length data generated per read\\ngroup, as well as the options used to\\nconfigure the -makeStats mode"
    force_compression: "if results are sent to stdout\\n(like when piping to another tool),\\ndefault behavior is to leave output\\nuncompressed.Use this flag to override and\\nforce compression. This feature is\\ndisabled in -makeStats mode."
    make_stats: "generates a fragment-length\\nstats file from the input BAM. Data is\\nwritten to file specified using the -stats\\noption. MarkPairs Mode Settings are\\nDISABLED."
    mark_pairs: "generates an output BAM with\\nalignments marked with proper-pair status.\\nStats data is read from file specified\\nusing the -stats option. MakeStats Mode\\nSettings are DISABLED"
    two_pass: "combines the -makeStats &"
    min_mq: "minimum map quality. Used in"
    ci: "confidence interval. Set\\nmin/max fragment lengths such that we\\ncapture this fraction of pairs"
    umt: "unused model threshold. The\\nresolve tool considers 8 possible\\norientation models for pairs. The top 2\\nare selected for later use when actually\\nmarking alignments. This value determines\\nthe cutoff for marking a read group as\\nambiguous. Meaning that if the ratio of\\nthe number of alignments from bottom 6\\nmodels to the top 2 is greater than this\\nthreshold, then the read group is flagged\\nas ambiguous. By default, NO alignments\\nfrom ambiguous read groups will be marked\\nas proper pairs. You may override this\\nbehavior with the -force option in\\n-markPairs mode"
    force: "forces all read groups to be\\nmarked according to their top 2\\n'orientation models'. When generating\\nstats, the 2 (out of 8 possible) models\\nwith the most observations are chosen as\\nthe top models for each read group. If the\\nremaining 6 models account for more than\\nsome threshold ([default=10%], see -umt),\\nthen the read group is marked as\\nambiguous. The default behavior is that\\nfor an ambiguous read group, NONE of its\\nalignments are marked as proper-pairs. By\\nsetting this option, a read group's\\nambiguity flag will be ignored, and all of\\nits alignments will be compared to the top\\n2 models."
    purposes_dot: "General Resolve Options (available in all modes):"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_mark_pairs = "${in_mark_pairs}"
  }
}