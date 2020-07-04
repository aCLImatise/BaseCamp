version 1.0

task FindTADsAndLoopsFromRelMatrix {
  input {
    Boolean? mint_ad_score
    Boolean? mint_ad_size
    Boolean? size_tad_optima
    Boolean? no_overlap
    Boolean? no_overlap_strict
    Boolean? skip_tads
    Boolean? min_loop_dist
    Boolean? anchor_size
    Boolean? anchor_local_bg_size
    Boolean? fold_local_bg
    Boolean? fold_global_bg
    Boolean? poisson_local_bg
    Boolean? poisson_global_bg
    Boolean? min_loop_reads
    Boolean? skip_loops
    String? matrix
    File? prefix
    String? tad
    String? loop
    Boolean? mind_ist
    String cmd
  }
  command <<<
    findTADsAndLoopsFromRelMatrix \
      ~{cmd} \
      ~{true="-minTADscore" false="" mint_ad_score} \
      ~{true="-minTADsize" false="" mint_ad_size} \
      ~{true="-sizeTADoptima" false="" size_tad_optima} \
      ~{true="-noOverlap" false="" no_overlap} \
      ~{true="-noOverlapStrict" false="" no_overlap_strict} \
      ~{true="-skipTADs" false="" skip_tads} \
      ~{true="-minLoopDist" false="" min_loop_dist} \
      ~{true="-anchorSize" false="" anchor_size} \
      ~{true="-anchorLocalBgSize" false="" anchor_local_bg_size} \
      ~{true="-foldLocalBg" false="" fold_local_bg} \
      ~{true="-foldGlobalBg" false="" fold_global_bg} \
      ~{true="-poissonLocalBg" false="" poisson_local_bg} \
      ~{true="-poissonGlobalBg" false="" poisson_global_bg} \
      ~{true="-minLoopReads" false="" min_loop_reads} \
      ~{true="-skipLoops" false="" skip_loops} \
      ~{if defined(matrix) then ("-matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(tad) then ("-tad " +  '"' + tad + '"') else ""} \
      ~{if defined(loop) then ("-loop " +  '"' + loop + '"') else ""} \
      ~{true="-minDist" false="" mind_ist}
  >>>
  parameter_meta {
    mint_ad_score: "<#> (minimum inclusion ratio i.e. intra-TAD interactions vs. inter-TAD interaction, def: 1.75)"
    mint_ad_size: "<#> (minimum TAD size, default: 100000)"
    size_tad_optima: "<#> (window size to look for local optima, default: 5xresolution)"
    no_overlap: "(remove overlapping TADs if they overlap more than 0.20 - keep best one)"
    no_overlap_strict: "(remove overlapping TADs if they overlap at all - keep best one)"
    skip_tads: "(don't find TADs)"
    min_loop_dist: "<#> (minimum interaction length for loops)"
    anchor_size: "<#> (size of loop anchor region to count interactions, default 5x res)"
    anchor_local_bg_size: "<#> (size of region near loop anchors to calculate background, default 15x res)"
    fold_local_bg: "<#> (local fold threshold for interaction for loops, def: 1.5)"
    fold_global_bg: "<#> (global fold threshold [vs. avg interactions per distance] for loops, def: 2.0)"
    poisson_local_bg: "<#> (maximum poisson p-value for loop interactions vs. local background, def: 1e-5)"
    poisson_global_bg: "<#> (maximum poisson p-value for loop interactions vs. similar distance background, def: 1e-5)"
    min_loop_reads: "<#> (minimum number of interaction reads for loops, default: automatic)"
    skip_loops: "(don't find loops/anchors)"
    matrix: "[relative file2] ... (relative matricies to use for scoring)"
    prefix: "(Filename prefix for output files, default: out)"
    tad: "(score TAD on inclusion ratio)"
    loop: "(score interactions found at loops)"
    mind_ist: "<#> (minimum contact distance to score (to avoid diagonal) default: 3 x res)"
    cmd: ""
  }
}