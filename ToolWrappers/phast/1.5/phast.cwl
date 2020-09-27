class: CommandLineTool
id: phast.cwl
inputs:
- id: in_all_dists
  doc: hmm_view        phastBias
  type: string
  inputBinding:
    position: 0
- id: in_base_evolve
  doc: indelFit        phastCons
  type: string
  inputBinding:
    position: 1
- id: in_choose_lines
  doc: indelHistory    phastMotif
  type: string
  inputBinding:
    position: 2
- id: in_clean_genes
  doc: maf_parse       phastOdds
  type: string
  inputBinding:
    position: 3
- id: in_cons_entropy
  doc: makeHKY         phyloBoot
  type: string
  inputBinding:
    position: 4
- id: in_convert_coords
  doc: modFreqs        phyloFit
  type: string
  inputBinding:
    position: 5
- id: in_display_rate_matrix
  doc: msa_diff        phyloP
  type: string
  inputBinding:
    position: 6
- id: in_d_less
  doc: msa_split       prequel
  type: string
  inputBinding:
    position: 7
- id: in_d_lessp
  doc: msa_view        refeature
  type: string
  inputBinding:
    position: 8
- id: in_draw_tree
  doc: pbsDecode       stringiphy
  type: string
  inputBinding:
    position: 9
- id: in_eval_predictions
  doc: pbsEncode       test
  type: string
  inputBinding:
    position: 10
- id: in_exon_i_phy
  doc: pbsScoreMatrix  tree_doctor
  type: string
  inputBinding:
    position: 11
- id: in_hmm_train
  doc: pbsTrain        treeGen
  type: string
  inputBinding:
    position: 12
- id: in_hmm_tweak
  doc: phast
  type: string
  inputBinding:
    position: 13
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phast
