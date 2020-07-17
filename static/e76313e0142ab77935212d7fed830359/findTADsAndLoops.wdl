version 1.0

task FindTADsAndLoops.pl {
  input {
    Boolean? cpu
    Boolean? res
    Boolean? window
    Boolean? balance
    Boolean? mind_ist
    Boolean? max_dist
    Boolean? mint_ad_size
    Boolean? mint_ad_score
    Boolean? keep_overlapping_tads
    Boolean? min_loop_dist
    Boolean? anchor_size
    Boolean? anchor_local_bg_size
    Boolean? min_loop_reads
    Boolean? skip_filtering
    Boolean? keep_unfiltered
    String? file_genome_exclude
    String? genome
    String? bad_chr
    Boolean? min_coverage_tad
    Boolean? min_coverage_anchor
    Boolean? ins_dist
    Boolean? did_ist
    Boolean? override
    Boolean? raw
    Boolean? norm_total
  }
  command <<<
    findTADsAndLoops.pl \
      ~{true="-cpu" false="" cpu} \
      ~{true="-res" false="" res} \
      ~{true="-window" false="" window} \
      ~{true="-balance" false="" balance} \
      ~{true="-minDist" false="" mind_ist} \
      ~{true="-maxDist" false="" max_dist} \
      ~{true="-minTADsize" false="" mint_ad_size} \
      ~{true="-minTADscore" false="" mint_ad_score} \
      ~{true="-keepOverlappingTADs" false="" keep_overlapping_tads} \
      ~{true="-minLoopDist" false="" min_loop_dist} \
      ~{true="-anchorSize" false="" anchor_size} \
      ~{true="-anchorLocalBgSize" false="" anchor_local_bg_size} \
      ~{true="-minLoopReads" false="" min_loop_reads} \
      ~{true="-skipFiltering" false="" skip_filtering} \
      ~{true="-keepUnfiltered" false="" keep_unfiltered} \
      ~{if defined(file_genome_exclude) then ("-p " +  '"' + file_genome_exclude + '"') else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(bad_chr) then ("-badChr " +  '"' + bad_chr + '"') else ""} \
      ~{true="-minCoverageTAD" false="" min_coverage_tad} \
      ~{true="-minCoverageAnchor" false="" min_coverage_anchor} \
      ~{true="-insDist" false="" ins_dist} \
      ~{true="-diDist" false="" did_ist} \
      ~{true="-override" false="" override} \
      ~{true="-raw" false="" raw} \
      ~{true="-normTotal" false="" norm_total}
  >>>
  parameter_meta {
    cpu: "<#> (max CPUs to use)"
    res: "<#> (resolution, default: 3000)"
    window: "<#> (overlapping window size, i.e. superRes, default: 15000)"
    balance: "| -nobalance (balance contact maps, default: -nobalance)"
    mind_ist: "<#> (minimum interaction distance to consider, default: 25000)"
    max_dist: "<#> (maximum interaction distance to consider, default: 2000000)"
    mint_ad_size: "<#> (default: 45000)"
    mint_ad_score: "<#> (minimum inclusion score to call TAD, default: 1.5)"
    keep_overlapping_tads: "(by default, program removes overlapping TAD calls)"
    min_loop_dist: "<#> (minimum length of contact points to find, default: 3x window size)"
    anchor_size: "<#> (size of region used to calculate loop score, default: window size)"
    anchor_local_bg_size: "<#> (size of region used to calculate local bg, default: 5x window size)"
    min_loop_reads: "<#> (minimum number of adjusted reads for contact point, default: use -poissonLoopGlobalBg)"
    skip_filtering: "(skip post-feature finding filtering step)"
    keep_unfiltered: "(keep unfiltered version of TADs/Loops)"
    file_genome_exclude: "(File of genome duplications/bad/blacklisted regions to exclude from Loop/TAD endpoints)"
    genome: "(i.e. hg19, hg38)"
    bad_chr: "[chr] ... (chromosomes to skip/exclude)"
    min_coverage_tad: "<#> (minimum ratio of read coverage in TAD relative to genome average, def: 0.25)"
    min_coverage_anchor: "<#> (minimum ratio of read coverage at anchors relative to average, def: 0.25)"
    ins_dist: "<#> (distance across which to calculate insulation ratio, default: 150000)"
    did_ist: "<#> (distance across which to calculate directionality index , default: 1000000)"
    override: "(if res/maxDist are set to produce huge matrices and you have the RAM, you may need to include this)"
    raw: "(report raw interaction counts, will impact TAD inclusion ratio scoring too)"
    norm_total: "<#> (normalize based on this depth of sequencing for Hi-C experiments)"
  }
}