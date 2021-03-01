version 1.0

task PairDiscordantspy {
  input {
    File? tab_delimited_bed
    Int? num_mappings
    Int? order
    Int? dist
    Int? min_span
    Int? min_conc_range
    Int? max_conc_range
    Int? mode
    Int? anchor_thresh
    Int? multi_thresh
    Int? edit_slop
    Boolean? orphans
  }
  command <<<
    pairDiscordants_py \
      ~{if defined(tab_delimited_bed) then ("--file " +  '"' + tab_delimited_bed + '"') else ""} \
      ~{if defined(num_mappings) then ("--numMappings " +  '"' + num_mappings + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(min_span) then ("--minSpan " +  '"' + min_span + '"') else ""} \
      ~{if defined(min_conc_range) then ("--minConcRange " +  '"' + min_conc_range + '"') else ""} \
      ~{if defined(max_conc_range) then ("--maxConcRange " +  '"' + max_conc_range + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(anchor_thresh) then ("--anchorThresh " +  '"' + anchor_thresh + '"') else ""} \
      ~{if defined(multi_thresh) then ("--multiThresh " +  '"' + multi_thresh + '"') else ""} \
      ~{if defined(edit_slop) then ("--editSlop " +  '"' + edit_slop + '"') else ""} \
      ~{if (orphans) then "--orphans" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    tab_delimited_bed: "A tab delimited BED file, or standard input (-i\\nstdin)."
    num_mappings: "The number of mapping combinations that are reported.\\nDefault = 1000."
    order: "The order to choose mappings when there are more than\\nspecified in -n. Supports size between read1-read2\\nmappings (-o size) or genome order (-o genome) sorted\\nin default fashion (chr10 before chr2). In either case\\nmapping combinations with less edit distance have\\npriority. Default = size."
    dist: "The genomic distance above which a readpair mapping is\\nconsidered 'distant'. This is used in determining the\\norder that mappings are reported when using the 'size'\\noption in -o. Default = 1000000"
    min_span: "The minimum genomic distance that a readpair must span\\nin order to be reported, not counting the read lengths\\n(i.e., inner span, not fragment size). Default = 100."
    min_conc_range: "minimum size to judge a readpair as 'concordant' with\\nrespect to the reference genome. Assumes fragment\\nlibraries not matepair libraries (+/- orientation is\\nconcordant). Default = 0."
    max_conc_range: "Maximum size to judge a read as 'concordant. Default =\\n600."
    mode: "Report all mapping types (-m detail), just discordants\\n(-m discordant), or directly to Hydra input format (-m\\nhydra) without additional columns. In detail mode only\\none mapping is returned for concordant reads or those\\nthat fail the minSpan (-s1) threshold. These are\\ntagged in an additional column as 'concordant' or\\n'badSpan'. Default = 'hydra'."
    anchor_thresh: "The number of mapping combinations allowed for\\nreadpairs with a single uniquely-mapped read;\\nreadpairs with more than this number of mappings on\\nthe non-unique end will not be reported (except in\\ndetail mode with NA's in all fields except the read\\nID); Default = 1000."
    multi_thresh: "The number of mapping combiantions allowed for\\nreadpairs without a single uniquely-mapped read;\\nreadpair mappings with more than this number of\\nmappings will not be reported (except in detail mode\\nwith NA's in all fields except the read ID); Default =\\n100."
    edit_slop: "The combined edit distance allowed, relative to best\\nmapping for each pair; Default = 0."
    orphans: "Whether or not to report \\\"orphaned\\\" pairs; Default =\\nfalse.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}