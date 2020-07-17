version 1.0

task SOAPdenovo63merAll {
  input {
    String? configfile_config_file
    String? outputgraph_prefix_output
    Int? kmermin_max_size
    Int? ncpu_number_cpu
    Int? initmemoryassumption_memory_assumption
    Int? kmerfreqcutoff_kmers_larger
    Boolean? optional_resolve_repeats
    Int? edgecovcutoff_edges_larger
    Int? mergelevelmin_max_strength
    Int? two_edges_arcs
    Int? maxkmer_max_maximum
    Boolean? optional_merge_bubble
    Int? kmerrcmin_max_kmer
    Boolean? optional_fill_gaps
    Boolean? optional_unmask_contigs
    Boolean? optional_keep_contigs
    Int? gaplendiff_allowed_difference
    Int? mincontiglen_shortest_contig
    Float? mincontigcvg_minimum_contig
    Float? maxcontigcvg_maximum_contig
    Float? insertsizeupperbound_bavgins_will
    Float? bubblecoverage_remove_contig
    Int? genomesize_genome_size
    Boolean? optional_output_information
  }
  command <<<
    SOAPdenovo-63mer all \
      ~{if defined(configfile_config_file) then ("-s " +  '"' + configfile_config_file + '"') else ""} \
      ~{if defined(outputgraph_prefix_output) then ("-o " +  '"' + outputgraph_prefix_output + '"') else ""} \
      ~{if defined(kmermin_max_size) then ("-K " +  '"' + kmermin_max_size + '"') else ""} \
      ~{if defined(ncpu_number_cpu) then ("-p " +  '"' + ncpu_number_cpu + '"') else ""} \
      ~{if defined(initmemoryassumption_memory_assumption) then ("-a " +  '"' + initmemoryassumption_memory_assumption + '"') else ""} \
      ~{if defined(kmerfreqcutoff_kmers_larger) then ("-d " +  '"' + kmerfreqcutoff_kmers_larger + '"') else ""} \
      ~{true="-R" false="" optional_resolve_repeats} \
      ~{if defined(edgecovcutoff_edges_larger) then ("-D " +  '"' + edgecovcutoff_edges_larger + '"') else ""} \
      ~{if defined(mergelevelmin_max_strength) then ("-M " +  '"' + mergelevelmin_max_strength + '"') else ""} \
      ~{if defined(two_edges_arcs) then ("-e " +  '"' + two_edges_arcs + '"') else ""} \
      ~{if defined(maxkmer_max_maximum) then ("-m " +  '"' + maxkmer_max_maximum + '"') else ""} \
      ~{true="-E" false="" optional_merge_bubble} \
      ~{if defined(kmerrcmin_max_kmer) then ("-k " +  '"' + kmerrcmin_max_kmer + '"') else ""} \
      ~{true="-F" false="" optional_fill_gaps} \
      ~{true="-u" false="" optional_unmask_contigs} \
      ~{true="-w" false="" optional_keep_contigs} \
      ~{if defined(gaplendiff_allowed_difference) then ("-G " +  '"' + gaplendiff_allowed_difference + '"') else ""} \
      ~{if defined(mincontiglen_shortest_contig) then ("-L " +  '"' + mincontiglen_shortest_contig + '"') else ""} \
      ~{if defined(mincontigcvg_minimum_contig) then ("-c " +  '"' + mincontigcvg_minimum_contig + '"') else ""} \
      ~{if defined(maxcontigcvg_maximum_contig) then ("-C " +  '"' + maxcontigcvg_maximum_contig + '"') else ""} \
      ~{if defined(insertsizeupperbound_bavgins_will) then ("-b " +  '"' + insertsizeupperbound_bavgins_will + '"') else ""} \
      ~{if defined(bubblecoverage_remove_contig) then ("-B " +  '"' + bubblecoverage_remove_contig + '"') else ""} \
      ~{if defined(genomesize_genome_size) then ("-N " +  '"' + genomesize_genome_size + '"') else ""} \
      ~{true="-V" false="" optional_output_information}
  >>>
  parameter_meta {
    configfile_config_file: "configFile: the config file of solexa reads"
    outputgraph_prefix_output: "outputGraph: prefix of output graph file name"
    kmermin_max_size: "kmer(min 13, max 63): kmer size, [23]"
    ncpu_number_cpu: "n_cpu: number of cpu for use, [8]"
    initmemoryassumption_memory_assumption: "initMemoryAssumption: memory assumption initialized to avoid further reallocation, unit G, [0]"
    kmerfreqcutoff_kmers_larger: "kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff will be deleted, [0]"
    optional_resolve_repeats: "(optional)  resolve repeats by reads, [NO]"
    edgecovcutoff_edges_larger: "edgeCovCutoff: edges with coverage no larger than EdgeCovCutoff will be deleted, [1]"
    mergelevelmin_max_strength: "mergeLevel(min 0, max 3): the strength of merging similar sequences during contiging, [1]"
    two_edges_arcs: "arcWeight: two edges, between which the arc's weight is larger than arcWeight, will be linerized, [0]"
    maxkmer_max_maximum: "maxKmer (max 63): maximum kmer size used for multi-kmer, [NO]"
    optional_merge_bubble: "(optional)  merge clean bubble before iterate, works only if -M is set when using multi-kmer, [NO]"
    kmerrcmin_max_kmer: "kmer_R2C(min 13, max 63): kmer size used for mapping reads to contigs, [K]"
    optional_fill_gaps: "(optional)  fill gaps in scaffolds, [NO]"
    optional_unmask_contigs: "(optional)  un-mask contigs with high/low coverage before scaffolding, [mask]"
    optional_keep_contigs: "(optional)  keep contigs weakly connected to other contigs in scaffold, [NO]"
    gaplendiff_allowed_difference: "gapLenDiff: allowed length difference between estimated and filled gap, [50]"
    mincontiglen_shortest_contig: "minContigLen: shortest contig for scaffolding, [K+2]"
    mincontigcvg_minimum_contig: "minContigCvg: minimum contig coverage (c*avgCvg), contigs shorter than 100bp with coverage smaller than c*avgCvg will be masked before scaffolding unless -u is set, [0.1]"
    maxcontigcvg_maximum_contig: "maxContigCvg: maximum contig coverage (C*avgCvg), contigs with coverage larger than C*avgCvg or contigs shorter than 100bp with coverage larger than 0.8*C*avgCvg will be masked before scaffolding unless -u is set, [2]"
    insertsizeupperbound_bavgins_will: "insertSizeUpperBound: (b*avg_ins) will be used as upper bound of insert size for large insert size ( > 1000) when handling pair-end connections between contigs if b is set to larger than 1, [1.5]"
    bubblecoverage_remove_contig: "bubbleCoverage: remove contig with lower cvoerage in bubble structure if both contigs' coverage are smaller than bubbleCoverage*avgCvg, [0.6]"
    genomesize_genome_size: "genomeSize: genome size for statistics, [0]"
    optional_output_information: "(optional)  output information for Hawkeye to visualize the assembly, [NO]"
  }
}