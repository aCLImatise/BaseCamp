class: CommandLineTool
id: repeatoire.cwl
inputs:
- id: allow_redundant
  doc: (=1)        allow redundant alignments?
  type: string
  inputBinding:
    prefix: --allow-redundant
- id: chain
  doc: (=1)                  chain seeds?
  type: string
  inputBinding:
    prefix: --chain
- id: extend
  doc: (=1)                 perform gapped extension on chains?
  type: string
  inputBinding:
    prefix: --extend
- id: window
  doc: (=-1)                size of window to use during gapped  extension
  type: string
  inputBinding:
    prefix: --window
- id: gap_open
  doc: (=0)                gap open penalty
  type: string
  inputBinding:
    prefix: --gapopen
- id: gap_extend
  doc: (=0)              gap extension penalty
  type: string
  inputBinding:
    prefix: --gapextend
- id: h
  doc: (=0.00800000038)          Transition to Homologous
  type: string
  inputBinding:
    prefix: --h
- id: highest
  doc: '(=procrast.highest) file containing highest scoring alignment  for each multiplicity '
  type: string
  inputBinding:
    prefix: --highest
- id: l
  doc: (=1)                      minimum repeat length
  type: string
  inputBinding:
    prefix: --l
- id: large_repeats
  doc: (=0)          optimize for large repeats
  type: string
  inputBinding:
    prefix: --large-repeats
- id: load_sml
  doc: (=0)               try to load existing SML file?
  type: string
  inputBinding:
    prefix: --load-sml
- id: only_direct
  doc: (=0)             only process seed matches on same strand?
  type: string
  inputBinding:
    prefix: --onlydirect
- id: only_extended
  doc: (=0)           only output extended matches?
  type: string
  inputBinding:
    prefix: --onlyextended
- id: output
  doc: 'procrastAligner output '
  type: string
  inputBinding:
    prefix: --output
- id: percentid
  doc: (=0)              min repeat family % id
  type: string
  inputBinding:
    prefix: --percentid
- id: novel_subsets
  doc: (=0)          find novel subset matches?
  type: string
  inputBinding:
    prefix: --novel-subsets
- id: novel_matches
  doc: (=1)          use novel matches found during gapped  extension?
  type: string
  inputBinding:
    prefix: --novel-matches
- id: rmax
  doc: (=500)                 maximum repeat multiplicity (max copy  number)
  type: string
  inputBinding:
    prefix: --rmax
- id: rm_in
  doc: (=2)                   minimum repeat multiplicity (min copy  number)
  type: string
  inputBinding:
    prefix: --rmin
- id: seeds
  doc: seed output file
  type: string
  inputBinding:
    prefix: --seeds
- id: sequence
  doc: FastA sequence file
  type: string
  inputBinding:
    prefix: --sequence
- id: small_repeats
  doc: (=0)          optimize for small repeats
  type: string
  inputBinding:
    prefix: --small-repeats
- id: score_out
  doc: 'output with corresponding score and  alignment info '
  type: string
  inputBinding:
    prefix: --score-out
- id: solid
  doc: (=0)                  use solid/exact seeds?
  type: string
  inputBinding:
    prefix: --solid
- id: sp
  doc: (=0)                     minimum Sum-of-Pairs alignment score
  type: string
  inputBinding:
    prefix: --sp
- id: tandem
  doc: (=1)                 allow tandem repeats?
  type: string
  inputBinding:
    prefix: --tandem
- id: two_hits
  doc: (=0)               require two hits within w to trigger gapped extension?
  type: string
  inputBinding:
    prefix: --two-hits
- id: u
  doc: (=0.00100000005)          Transition to Unrelated
  type: string
  inputBinding:
    prefix: --u
- id: un_align
  doc: (=1)                unalign non-homologous sequence?
  type: string
  inputBinding:
    prefix: --unalign
- id: w
  doc: '(=0)                      max gap width '
  type: string
  inputBinding:
    prefix: --w
- id: x_mfa
  doc: XMFA format output
  type: string
  inputBinding:
    prefix: --xmfa
- id: xml
  doc: XML format output
  type: string
  inputBinding:
    prefix: --xml
- id: z
  doc: (=0)                      seed weight
  type: string
  inputBinding:
    prefix: --z
outputs: []
cwlVersion: v1.1
baseCommand:
- repeatoire
