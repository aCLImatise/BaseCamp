version 1.0

task FindTADsAndLoopsFromRelMatrix {
  input {
    File? prefix
    Boolean? mind_ist
    Boolean? did_ist
    Boolean? ins_dist
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
    File? matrix
    File? tad
    File? loop
    String cmd
  }
  command <<<
    findTADsAndLoopsFromRelMatrix \
      ~{cmd} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if (mind_ist) then "-minDist" else ""} \
      ~{if (did_ist) then "-diDist" else ""} \
      ~{if (ins_dist) then "-insDist" else ""} \
      ~{if (mint_ad_score) then "-minTADscore" else ""} \
      ~{if (mint_ad_size) then "-minTADsize" else ""} \
      ~{if (size_tad_optima) then "-sizeTADoptima" else ""} \
      ~{if (no_overlap) then "-noOverlap" else ""} \
      ~{if (no_overlap_strict) then "-noOverlapStrict" else ""} \
      ~{if (skip_tads) then "-skipTADs" else ""} \
      ~{if (min_loop_dist) then "-minLoopDist" else ""} \
      ~{if (anchor_size) then "-anchorSize" else ""} \
      ~{if (anchor_local_bg_size) then "-anchorLocalBgSize" else ""} \
      ~{if (fold_local_bg) then "-foldLocalBg" else ""} \
      ~{if (fold_global_bg) then "-foldGlobalBg" else ""} \
      ~{if (poisson_local_bg) then "-poissonLocalBg" else ""} \
      ~{if (poisson_global_bg) then "-poissonGlobalBg" else ""} \
      ~{if (min_loop_reads) then "-minLoopReads" else ""} \
      ~{if (skip_loops) then "-skipLoops" else ""} \
      ~{if defined(matrix) then ("-matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(tad) then ("-tad " +  '"' + tad + '"') else ""} \
      ~{if defined(loop) then ("-loop " +  '"' + loop + '"') else ""}
  >>>
  parameter_meta {
    prefix: "(Filename prefix for output files, default: out)"
    mind_ist: "<#> (minimum interaction distance to score (to avoid diagonal) default: 3 x res)"
    did_ist: "<#> (Distance used to calculate directionality index, default 1000000)"
    ins_dist: "<#> (maximum length of interactions used to insulation ratio, default 200000)"
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
    tad: "(score TAD on inclusion ratio)"
    loop: "(score interactions found at loops)"
    cmd: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}