version 1.0

task AnnotateInteractions.pl {
  input {
    Boolean? res
    Boolean? hub_count
    Boolean? skip_ann
    Boolean? no_ann
    Boolean? washu
    Boolean? cpu
    Boolean? mind_ist
    Boolean? max_dist
    Boolean? p_value
    Boolean? zscore
    String? filter
    String? filter_two
    String? ctcf
    String? check_overlap_peak
    String? d
    Boolean? circo_s
    Int? compare_st_file
    String? connect
    Boolean? pout
    Boolean? g_size
    String? pos
    String? bgp
    Int interaction_file
    String genome_version
    String output_directory
  }
  command <<<
    annotateInteractions.pl \
      ~{interaction_file} \
      ~{genome_version} \
      ~{output_directory} \
      ~{true="-res" false="" res} \
      ~{true="-hubCount" false="" hub_count} \
      ~{true="-skipann" false="" skip_ann} \
      ~{true="-noann" false="" no_ann} \
      ~{true="-washu" false="" washu} \
      ~{true="-cpu" false="" cpu} \
      ~{true="-minDist" false="" mind_ist} \
      ~{true="-maxDist" false="" max_dist} \
      ~{true="-pvalue" false="" p_value} \
      ~{true="-zscore" false="" zscore} \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""} \
      ~{if defined(filter_two) then ("-filter2 " +  '"' + filter_two + '"') else ""} \
      ~{if defined(ctcf) then ("-ctcf " +  '"' + ctcf + '"') else ""} \
      ~{if defined(check_overlap_peak) then ("-p " +  '"' + check_overlap_peak + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{true="-circos" false="" circo_s} \
      ~{if defined(compare_st_file) then ("-i " +  '"' + compare_st_file + '"') else ""} \
      ~{if defined(connect) then ("-connect " +  '"' + connect + '"') else ""} \
      ~{true="-pout" false="" pout} \
      ~{true="-gsize" false="" g_size} \
      ~{if defined(pos) then ("-pos " +  '"' + pos + '"') else ""} \
      ~{if defined(bgp) then ("-bgp " +  '"' + bgp + '"') else ""}
  >>>
  parameter_meta {
    res: "<#> (Resolution of analysis, default: auto detect)"
    hub_count: "<#> (Minimum number of interactions to define a hub, default: 5)"
    skip_ann: "(skip all endpoint annotations)"
    no_ann: "(skip detailed annotation of endpoints)"
    washu: "(create Wash U Epigenome Browser output files: outDirName.bed.gz and tbi)"
    cpu: "# (number of cores to use)"
    mind_ist: "<#> (filter out interactions spaced less than # bp - set high for only interchr)"
    max_dist: "<#> (filter out interactions spaced more than # bp, will remove interchr)"
    p_value: "<#> (filter out interactions with p-value greater than #) -dpvalue <#> (filter out interactions with p-value (vs bg) greater than #)"
    zscore: "<#> (filter out interactions with zscore less than #) -dzscore <#> (filter out interactions with zscore (vs bg) less than #)"
    filter: "(only look at interactions with endpoints in peakfile)"
    filter_two: "(only look at interactions connecting -filter and -filter2 peak files)"
    ctcf: "<CTCF motif> (calculated directionality stats)"
    check_overlap_peak: "[peak file 2] ... (Check overlap with peak files)"
    d: "[2nd Hi-C TagDirectory] ..."
    circo_s: "(Convert interactions to circos interactions format - stdout)"
    compare_st_file: "[interaction file3] ... (Compare 1st file interactions to these)"
    connect: "<peakFile2> (returns association table between sets of peaks)"
    pout: "(Convert interactions to a non-redundant peak file, sent to stdout)"
    g_size: "<#> (size of genome, default: 2e9)"
    pos: ":XXX-YYY (specific, continuous region)"
    bgp: "(peak file)"
    interaction_file: ""
    genome_version: ""
    output_directory: ""
  }
}