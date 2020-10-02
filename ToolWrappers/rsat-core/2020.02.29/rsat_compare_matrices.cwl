class: CommandLineTool
id: rsat_compare_matrices.cwl
inputs:
- id: in_compare_matrices
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: pattern matching
  type: string
  inputBinding:
    position: 0
- id: in_pssm
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 1
- id: in_column_dot
  doc: '[prefix].gml'
  type: string
  inputBinding:
    position: 0
- id: in_graphviz_dot
  doc: '[prefix_alignments_pairwise.tab]'
  type: string
  inputBinding:
    position: 0
- id: in_wr_w_wwr
  doc: "wr1 = w / w1\nwr2 = w / w2"
  type: string
  inputBinding:
    position: 0
- id: in_respectively_dot
  doc: "\e[1mSum of Squared Distances (SSD)\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_note
  doc: "An alternative would be to use as normalizing factor the length of the\nalignment\
    \ (w) relative to the length of the shorter motif.\nNcor = cor * w / min(w1,w2)\n\
    This however tends to favour matches between very short motifs (4-5\nresidues)\
    \ which cover only a fraction of the query motif."
  type: string
  inputBinding:
    position: 0
- id: in_convert_background_model_dot
  doc: "\e[1m-top1 X\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_file_two_dot
  doc: "This is the typical use of \e[33mcompare-matrices\e[0m: comparing one or"
  type: long
  inputBinding:
    position: 0
- id: in_pair_dot
  doc: "This mode is used by \e[33mcluster-matrices\e[0m in order to obtain a table"
  type: string
  inputBinding:
    position: 0
- id: in_matching_profiles_convenient
  doc: Matching profiles are convenient for drawing the similarity
  type: string
  inputBinding:
    position: 0
- id: in_example
  doc: "Comparing motifs in a strand-insensitive way (-strand DR)\nDNA-binding motifs\
    \ are usually strand-insensitive. A motif may\nbe detected in one given orientation\
    \ by a motif-discovery\nalgorithm, but annotated in the reverse complementary\n\
    orientation in a motif database. For DNA binding motifs, we thus\nrecomment the\
    \ DR option.\nOn the contrary, RNA-related signals (termination,\npoly-adenylation,\
    \ miRNA) are strand-sensitive, and should be\ncompared in a single orientation\
    \ (-strand D)."
  type: string
  inputBinding:
    position: 0
- id: in_symmetry_dot
  doc: DNA signals can either be symmetrical (reverse complementary
  type: string
  inputBinding:
    position: 0
- id: in_mode_dot
  doc: "\e[33mmatch_rank\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_graph_exported_yet
  doc: The graph is exported in GML (open with CytoScape or yet) and
  type: string
  inputBinding:
    position: 0
- id: in_matches_dot
  doc: z-score = (score - mean(score) ) / sd(score)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- compare-matrices
