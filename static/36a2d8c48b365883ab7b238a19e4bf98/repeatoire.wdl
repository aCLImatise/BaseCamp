version 1.0

task Repeatoire {
  input {
    String? allow_redundant
    String? chain
    String? extend
    String? window
    String? gap_open
    String? gap_extend
    String? _transition_homologous
    String? highest
    String? minimum_repeat_length
    String? large_repeats
    String? load_sml
    String? only_direct
    String? only_extended
    String? procrastaligner_output
    String? percentid
    String? novel_subsets
    String? novel_matches
    String? rmax
    String? rm_in
    String? seeds
    String? sequence
    String? small_repeats
    String? score_out
    String? solid
    String? sp
    String? tandem
    String? two_hits
    String? _transition_unrelated
    String? un_align
    String? max_gap_width
    String? x_mfa
    String? xml
    String? _seed_weight
  }
  command <<<
    repeatoire \
      ~{if defined(allow_redundant) then ("--allow-redundant " +  '"' + allow_redundant + '"') else ""} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(extend) then ("--extend " +  '"' + extend + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(gap_open) then ("--gapopen " +  '"' + gap_open + '"') else ""} \
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
    window: "(=-1)                size of window to use during gapped  extension"
    gap_open: "(=0)                gap open penalty"
    gap_extend: "(=0)              gap extension penalty"
    _transition_homologous: "(=0.00800000038)          Transition to Homologous"
    highest: "(=procrast.highest) file containing highest scoring alignment  for each multiplicity "
    minimum_repeat_length: "(=1)                      minimum repeat length"
    large_repeats: "(=0)          optimize for large repeats"
    load_sml: "(=0)               try to load existing SML file?"
    only_direct: "(=0)             only process seed matches on same strand?"
    only_extended: "(=0)           only output extended matches?"
    procrastaligner_output: "procrastAligner output "
    percentid: "(=0)              min repeat family % id"
    novel_subsets: "(=0)          find novel subset matches?"
    novel_matches: "(=1)          use novel matches found during gapped  extension?"
    rmax: "(=500)                 maximum repeat multiplicity (max copy  number)"
    rm_in: "(=2)                   minimum repeat multiplicity (min copy  number)"
    seeds: "seed output file"
    sequence: "FastA sequence file"
    small_repeats: "(=0)          optimize for small repeats"
    score_out: "output with corresponding score and  alignment info "
    solid: "(=0)                  use solid/exact seeds?"
    sp: "(=0)                     minimum Sum-of-Pairs alignment score"
    tandem: "(=1)                 allow tandem repeats?"
    two_hits: "(=0)               require two hits within w to trigger gapped extension?"
    _transition_unrelated: "(=0.00100000005)          Transition to Unrelated"
    un_align: "(=1)                unalign non-homologous sequence?"
    max_gap_width: "(=0)                      max gap width "
    x_mfa: "XMFA format output"
    xml: "XML format output"
    _seed_weight: "(=0)                      seed weight"
  }
}