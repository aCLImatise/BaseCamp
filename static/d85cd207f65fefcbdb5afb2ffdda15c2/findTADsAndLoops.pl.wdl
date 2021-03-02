version 1.0

task FindTADsAndLoopspl {
  input {
    Boolean? cpu
    Boolean? res
    Boolean? window
    Boolean? no_balance
    Boolean? mind_ist
    Boolean? max_dist
    Directory? default_place_files
    Boolean? mint_ad_size
    Boolean? mint_ad_score
    Boolean? keep_overlapping_tads
    Boolean? fold_loop_local_bg
    Boolean? fold_loop_global_bg
    Boolean? poisson_loop_local_bg
    Boolean? poisson_loop_global_bg
    Boolean? min_loop_dist
    Boolean? anchor_size
    Boolean? anchor_local_bg_size
    Boolean? min_loop_reads
    Boolean? skip_filtering
    Boolean? keep_unfiltered
    File? file_genome_duplicationsbadblacklisted
    Int? genome
    String? bad_chr
    Boolean? min_coverage_tad
    Boolean? min_coverage_anchor
    Boolean? ins_dist
    Boolean? did_ist
    Boolean? override
    Int? d
    File? loop
    File? tad
    Boolean? raw
    Boolean? norm_total
  }
  command <<<
    findTADsAndLoops_pl \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if (res) then "-res" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (no_balance) then "-nobalance" else ""} \
      ~{if (mind_ist) then "-minDist" else ""} \
      ~{if (max_dist) then "-maxDist" else ""} \
      ~{if defined(default_place_files) then ("-o " +  '"' + default_place_files + '"') else ""} \
      ~{if (mint_ad_size) then "-minTADsize" else ""} \
      ~{if (mint_ad_score) then "-minTADscore" else ""} \
      ~{if (keep_overlapping_tads) then "-keepOverlappingTADs" else ""} \
      ~{if (fold_loop_local_bg) then "-foldLoopLocalBg" else ""} \
      ~{if (fold_loop_global_bg) then "-foldLoopGlobalBg" else ""} \
      ~{if (poisson_loop_local_bg) then "-poissonLoopLocalBg" else ""} \
      ~{if (poisson_loop_global_bg) then "-poissonLoopGlobalBg" else ""} \
      ~{if (min_loop_dist) then "-minLoopDist" else ""} \
      ~{if (anchor_size) then "-anchorSize" else ""} \
      ~{if (anchor_local_bg_size) then "-anchorLocalBgSize" else ""} \
      ~{if (min_loop_reads) then "-minLoopReads" else ""} \
      ~{if (skip_filtering) then "-skipFiltering" else ""} \
      ~{if (keep_unfiltered) then "-keepUnfiltered" else ""} \
      ~{if defined(file_genome_duplicationsbadblacklisted) then ("-p " +  '"' + file_genome_duplicationsbadblacklisted + '"') else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(bad_chr) then ("-badChr " +  '"' + bad_chr + '"') else ""} \
      ~{if (min_coverage_tad) then "-minCoverageTAD" else ""} \
      ~{if (min_coverage_anchor) then "-minCoverageAnchor" else ""} \
      ~{if (ins_dist) then "-insDist" else ""} \
      ~{if (did_ist) then "-diDist" else ""} \
      ~{if (override) then "-override" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(loop) then ("-loop " +  '"' + loop + '"') else ""} \
      ~{if defined(tad) then ("-tad " +  '"' + tad + '"') else ""} \
      ~{if (raw) then "-raw" else ""} \
      ~{if (norm_total) then "-normTotal" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cpu: "<#> (max CPUs to use)"
    res: "<#> (resolution, default: 3000)"
    window: "<#> (overlapping window size, i.e. superRes, default: 15000)"
    no_balance: "(balance contact maps, default: -nobalance)"
    mind_ist: "<#> (minimum interaction distance to consider, default: 25000)"
    max_dist: "<#> (maximum interaction distance to consider, default: 2000000)"
    default_place_files: "(by default will place output files within the Tag Directory)"
    mint_ad_size: "<#> (default: 45000)"
    mint_ad_score: "<#> (minimum inclusion score to call TAD, default: 1.5)"
    keep_overlapping_tads: "(by default, program removes overlapping TAD calls)"
    fold_loop_local_bg: "<#> (fold threshold for local loop enrichment, default: 1.5)"
    fold_loop_global_bg: "<#> (fold threshold over avg. interactions of similar distance, default: 2)"
    poisson_loop_local_bg: "<#> (poisson p-value threshold for differential interactions per loop, default: 0.01)"
    poisson_loop_global_bg: "<#> (poisson p-value threshold for minimum interactions per loop, default: 1e-05)"
    min_loop_dist: "<#> (minimum length of contact points to find, default: 3x window size)"
    anchor_size: "<#> (size of region used to calculate loop score, default: window size)"
    anchor_local_bg_size: "<#> (size of region used to calculate local bg, default: 5x window size)"
    min_loop_reads: "<#> (minimum number of adjusted reads for contact point, default: use -poissonLoopGlobalBg)"
    skip_filtering: "(skip post-feature finding filtering step)"
    keep_unfiltered: "(keep unfiltered version of TADs/Loops)"
    file_genome_duplicationsbadblacklisted: "(File of genome duplications/bad/blacklisted regions to exclude from Loop/TAD endpoints)"
    genome: "(i.e. hg19, hg38)"
    bad_chr: "[chr] ... (chromosomes to skip/exclude)"
    min_coverage_tad: "<#> (minimum ratio of read coverage in TAD relative to genome average, def: 0.25)"
    min_coverage_anchor: "<#> (minimum ratio of read coverage at anchors relative to average, def: 0.25)"
    ins_dist: "<#> (distance across which to calculate insulation ratio, default: 150000)"
    did_ist: "<#> (distance across which to calculate directionality index , default: 1000000)"
    override: "(if res/maxDist are set to produce huge matrices and you have the RAM, you may need to include this)"
    d: "[HiC TagDir2] ..."
    loop: "(will score loop interaction rates from this file)"
    tad: "(will score TAD inclusion ratios from this file)"
    raw: "(report raw interaction counts, will impact TAD inclusion ratio scoring too)"
    norm_total: "<#> (normalize based on this depth of sequencing for Hi-C experiments)"
  }
  output {
    File out_stdout = stdout()
    Directory out_default_place_files = "${in_default_place_files}"
  }
}