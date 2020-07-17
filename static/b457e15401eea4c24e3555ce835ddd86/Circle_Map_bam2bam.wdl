version 1.0

task CircleMapBam2bam {
  input {
    Boolean? input_bam_file
    Boolean? qb_am
    Boolean? fast_a
    Boolean? _output_output
    Boolean? _nhits_number
    Boolean? _probability_considering
    Boolean? _minsc_minimum
    Boolean? _gapopen_gap
    Boolean? _gap_extension
    Boolean? _mapq_minimum
    Boolean? _editdistancefraction_maximum
    Boolean? _splitquality_minium
    Boolean? remap_splits
    Boolean? iq
    Boolean? sd
    Boolean? _samplesize_number
    Boolean? _intervalprobability_skip
    Boolean? _clusteringdist_cluster
    Boolean? only_discordant_s
    Boolean? _threads_number
    Boolean? dir
    Boolean? _verbose_level
    String circle_map
    String realign
  }
  command <<<
    Circle-Map bam2bam \
      ~{circle_map} \
      ~{realign} \
      ~{true="-i" false="" input_bam_file} \
      ~{true="-qbam" false="" qb_am} \
      ~{true="-fasta" false="" fast_a} \
      ~{true="-o" false="" _output_output} \
      ~{true="-n" false="" _nhits_number} \
      ~{true="-p" false="" _probability_considering} \
      ~{true="-m" false="" _minsc_minimum} \
      ~{true="-g" false="" _gapopen_gap} \
      ~{true="-e" false="" _gap_extension} \
      ~{true="-q" false="" _mapq_minimum} \
      ~{true="-d" false="" _editdistancefraction_maximum} \
      ~{true="-Q" false="" _splitquality_minium} \
      ~{true="--remap_splits" false="" remap_splits} \
      ~{true="-iq" false="" iq} \
      ~{true="-sd" false="" sd} \
      ~{true="-s" false="" _samplesize_number} \
      ~{true="-P" false="" _intervalprobability_skip} \
      ~{true="-K" false="" _clusteringdist_cluster} \
      ~{true="--only_discordants" false="" only_discordant_s} \
      ~{true="-t" false="" _threads_number} \
      ~{true="-dir" false="" dir} \
      ~{true="-v" false="" _verbose_level}
  >>>
  parameter_meta {
    input_bam_file: "Input: bam file containing the reads extracted by ReadExtractor"
    qb_am: "Input: query name sorted bam file"
    fast_a: "Input: Reference genome fasta file"
    _output_output: ", --output         Output BAM name"
    _nhits_number: ", --nhits          Number of realignment attempts. Default: 10"
    _probability_considering: ", --cut_off        Probability cut-off for considering a soft-clipped as realigned: Default: 0.99"
    _minsc_minimum: ", --min_sc         Minimum soft-clipped length to attempt the realignment. Default: 8"
    _gapopen_gap: ", --gap_open       Gap open penalty in the position specific scoring matrix. Default: 5"
    _gap_extension: ", --gap_ext        Gap extension penalty in the position specific scoring matrix. Default: 1"
    _mapq_minimum: ", --mapq           Minimum mapping quality allowed in the supplementary alignments. Default: 20"
    _editdistancefraction_maximum: ", --edit_distance-fraction  Maximum edit distance fraction allowed in the first realignment. Default (0.05)"
    _splitquality_minium: ", --split_quality  Minium split score to output an interval. Default (0.0)"
    remap_splits: "Remap probabilistacally bwa-mem split reads"
    iq: ", --insert_mapq   Mapq cutoff for stimating the insert size distribution. Default 60"
    sd: ", --std           Standard deviations of the insert size to extend the intervals. Default 5"
    _samplesize_number: ", --sample_size    Number of concordant reads (R2F1) to use for estimating the insert size distribution. Default 100000"
    _intervalprobability_skip: ", --interval_probability  Skip edges of the graph with a probability below the threshold. Default: 0.01"
    _clusteringdist_cluster: ", --clustering_dist  Cluster reads that are K nucleotides appart in the same node. Default: 500"
    only_discordant_s: "Use only discordant reads to build the graph"
    _threads_number: ", --threads        Number of threads to use.Default 1"
    dir: ", --directory    Working directory, default is the working directory"
    _verbose_level: ", --verbose        Verbose level, 1=error,2=warning, 3=message"
    circle_map: ""
    realign: ""
  }
}