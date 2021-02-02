version 1.0

task Repeatoire {
  input {
    Int? allow_redundant
    Int? chain
    Int? extend
    Int? window
    Int? gap_extend
    Float? _transition_homologous
    File? highest
    Int? minimum_repeat_length
    Int? large_repeats
    File? load_sml
    Int? only_direct
    Int? only_extended
    String? procrastaligner_output
    Int? percentid
    Int? novel_subsets
    Int? novel_matches
    Int? rmax
    Int? rm_in
    File? seeds
    File? sequence
    Int? small_repeats
    String? score_out
    Int? solid
    Int? sp
    Int? tandem
    Int? two_hits
    Float? _transition_unrelated
    Int? un_align
    Int? max_gap_width
    String? x_mfa
    String? xml
    Int? _seed_weight
    String extension
  }
  command <<<
    repeatoire \
      ~{extension} \
      ~{if defined(allow_redundant) then ("--allow-redundant " +  '"' + allow_redundant + '"') else ""} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(extend) then ("--extend " +  '"' + extend + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(gap_extend) then ("--gapextend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(_transition_homologous) then ("--h " +  '"' + _transition_homologous + '"') else ""} \
      ~{if defined(highest) then ("--highest " +  '"' + highest + '"') else ""} \
      ~{if defined(minimum_repeat_length) then ("--l " +  '"' + minimum_repeat_length + '"') else ""} \
      ~{if defined(large_repeats) then ("--large-repeats " +  '"' + large_repeats + '"') else ""} \
      ~{if defined(load_sml) then ("--load-sml " +  '"' + load_sml + '"') else ""} \
      ~{if defined(only_direct) then ("--onlydirect " +  '"' + only_direct + '"') else ""} \
      ~{if defined(only_extended) then ("--onlyextended " +  '"' + only_extended + '"') else ""} \
      ~{if defined(procrastaligner_output) then ("--output " +  '"' + procrastaligner_output + '"') else ""} \
      ~{if defined(percentid) then ("--percentid " +  '"' + percentid + '"') else ""} \
      ~{if defined(novel_subsets) then ("--novel-subsets " +  '"' + novel_subsets + '"') else ""} \
      ~{if defined(novel_matches) then ("--novel-matches " +  '"' + novel_matches + '"') else ""} \
      ~{if defined(rmax) then ("--rmax " +  '"' + rmax + '"') else ""} \
      ~{if defined(rm_in) then ("--rmin " +  '"' + rm_in + '"') else ""} \
      ~{if defined(seeds) then ("--seeds " +  '"' + seeds + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(small_repeats) then ("--small-repeats " +  '"' + small_repeats + '"') else ""} \
      ~{if defined(score_out) then ("--score-out " +  '"' + score_out + '"') else ""} \
      ~{if defined(solid) then ("--solid " +  '"' + solid + '"') else ""} \
      ~{if defined(sp) then ("--sp " +  '"' + sp + '"') else ""} \
      ~{if defined(tandem) then ("--tandem " +  '"' + tandem + '"') else ""} \
      ~{if defined(two_hits) then ("--two-hits " +  '"' + two_hits + '"') else ""} \
      ~{if defined(_transition_unrelated) then ("--u " +  '"' + _transition_unrelated + '"') else ""} \
      ~{if defined(un_align) then ("--unalign " +  '"' + un_align + '"') else ""} \
      ~{if defined(max_gap_width) then ("--w " +  '"' + max_gap_width + '"') else ""} \
      ~{if defined(x_mfa) then ("--xmfa " +  '"' + x_mfa + '"') else ""} \
      ~{if defined(xml) then ("--xml " +  '"' + xml + '"') else ""} \
      ~{if defined(_seed_weight) then ("--z " +  '"' + _seed_weight + '"') else ""}
  >>>
  parameter_meta {
    allow_redundant: "(=1)        allow redundant alignments?"
    chain: "(=1)                  chain seeds?"
    extend: "(=1)                 perform gapped extension on chains?"
    window: "(=-1)                size of window to use during gapped"
    gap_extend: "(=0)              gap extension penalty"
    _transition_homologous: "(=0.00800000038)          Transition to Homologous"
    highest: "(=procrast.highest) file containing highest scoring alignment\\nfor each multiplicity"
    minimum_repeat_length: "(=1)                      minimum repeat length"
    large_repeats: "(=0)          optimize for large repeats"
    load_sml: "(=0)               try to load existing SML file?"
    only_direct: "(=0)             only process seed matches on same strand?"
    only_extended: "(=0)           only output extended matches?"
    procrastaligner_output: "procrastAligner output"
    percentid: "(=0)              min repeat family % id"
    novel_subsets: "(=0)          find novel subset matches?"
    novel_matches: "(=1)          use novel matches found during gapped\\nextension?"
    rmax: "(=500)                 maximum repeat multiplicity (max copy\\nnumber)"
    rm_in: "(=2)                   minimum repeat multiplicity (min copy\\nnumber)"
    seeds: "seed output file"
    sequence: "FastA sequence file"
    small_repeats: "(=0)          optimize for small repeats"
    score_out: "output with corresponding score and\\nalignment info"
    solid: "(=0)                  use solid/exact seeds?"
    sp: "(=0)                     minimum Sum-of-Pairs alignment score"
    tandem: "(=1)                 allow tandem repeats?"
    two_hits: "(=0)               require two hits within w to trigger gapped\\nextension?"
    _transition_unrelated: "(=0.00100000005)          Transition to Unrelated"
    un_align: "(=1)                unalign non-homologous sequence?"
    max_gap_width: "(=0)                      max gap width"
    x_mfa: "XMFA format output"
    xml: "XML format output"
    _seed_weight: "(=0)                      seed weight"
    extension: "--gapopen arg (=0)                gap open penalty"
  }
  output {
    File out_stdout = stdout()
    File out_seeds = "${in_seeds}"
  }
}