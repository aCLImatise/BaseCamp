class: CommandLineTool
id: repeatoire.cwl
inputs:
- id: in_allow_redundant
  doc: (=1)        allow redundant alignments?
  type: long
  inputBinding:
    prefix: --allow-redundant
- id: in_chain
  doc: (=1)                  chain seeds?
  type: long
  inputBinding:
    prefix: --chain
- id: in_extend
  doc: (=1)                 perform gapped extension on chains?
  type: long
  inputBinding:
    prefix: --extend
- id: in_window
  doc: (=-1)                size of window to use during gapped
  type: long
  inputBinding:
    prefix: --window
- id: in_gap_extend
  doc: (=0)              gap extension penalty
  type: long
  inputBinding:
    prefix: --gapextend
- id: in__transition_homologous
  doc: (=0.00800000038)          Transition to Homologous
  type: double
  inputBinding:
    prefix: --h
- id: in_highest
  doc: "(=procrast.highest) file containing highest scoring alignment\nfor each multiplicity"
  type: File
  inputBinding:
    prefix: --highest
- id: in_minimum_repeat_length
  doc: (=1)                      minimum repeat length
  type: long
  inputBinding:
    prefix: --l
- id: in_large_repeats
  doc: (=0)          optimize for large repeats
  type: long
  inputBinding:
    prefix: --large-repeats
- id: in_load_sml
  doc: (=0)               try to load existing SML file?
  type: File
  inputBinding:
    prefix: --load-sml
- id: in_only_direct
  doc: (=0)             only process seed matches on same strand?
  type: long
  inputBinding:
    prefix: --onlydirect
- id: in_only_extended
  doc: (=0)           only output extended matches?
  type: long
  inputBinding:
    prefix: --onlyextended
- id: in_output
  doc: procrastAligner output
  type: string
  inputBinding:
    prefix: --output
- id: in_percentid
  doc: (=0)              min repeat family % id
  type: long
  inputBinding:
    prefix: --percentid
- id: in_novel_subsets
  doc: (=0)          find novel subset matches?
  type: long
  inputBinding:
    prefix: --novel-subsets
- id: in_novel_matches
  doc: "(=1)          use novel matches found during gapped\nextension?"
  type: long
  inputBinding:
    prefix: --novel-matches
- id: in_rmax
  doc: "(=500)                 maximum repeat multiplicity (max copy\nnumber)"
  type: long
  inputBinding:
    prefix: --rmax
- id: in_rm_in
  doc: "(=2)                   minimum repeat multiplicity (min copy\nnumber)"
  type: long
  inputBinding:
    prefix: --rmin
- id: in_seeds
  doc: seed output file
  type: File
  inputBinding:
    prefix: --seeds
- id: in_sequence
  doc: FastA sequence file
  type: File
  inputBinding:
    prefix: --sequence
- id: in_small_repeats
  doc: (=0)          optimize for small repeats
  type: long
  inputBinding:
    prefix: --small-repeats
- id: in_score_out
  doc: "output with corresponding score and\nalignment info"
  type: string
  inputBinding:
    prefix: --score-out
- id: in_solid
  doc: (=0)                  use solid/exact seeds?
  type: long
  inputBinding:
    prefix: --solid
- id: in_sp
  doc: (=0)                     minimum Sum-of-Pairs alignment score
  type: long
  inputBinding:
    prefix: --sp
- id: in_tandem
  doc: (=1)                 allow tandem repeats?
  type: long
  inputBinding:
    prefix: --tandem
- id: in_two_hits
  doc: "(=0)               require two hits within w to trigger gapped\nextension?"
  type: long
  inputBinding:
    prefix: --two-hits
- id: in__transition_unrelated
  doc: (=0.00100000005)          Transition to Unrelated
  type: double
  inputBinding:
    prefix: --u
- id: in_un_align
  doc: (=1)                unalign non-homologous sequence?
  type: long
  inputBinding:
    prefix: --unalign
- id: in_max_gap_width
  doc: (=0)                      max gap width
  type: long
  inputBinding:
    prefix: --w
- id: in_x_mfa
  doc: XMFA format output
  type: string
  inputBinding:
    prefix: --xmfa
- id: in_xml
  doc: XML format output
  type: string
  inputBinding:
    prefix: --xml
- id: in__seed_weight
  doc: (=0)                      seed weight
  type: long
  inputBinding:
    prefix: --z
- id: in_extension
  doc: --gapopen arg (=0)                gap open penalty
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_seeds
  doc: seed output file
  type: File
  outputBinding:
    glob: $(inputs.in_seeds)
cwlVersion: v1.1
baseCommand:
- repeatoire
