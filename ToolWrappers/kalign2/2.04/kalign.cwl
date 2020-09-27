class: CommandLineTool
id: kalign.cwl
inputs:
- id: in_gapopen_gap_open
  doc: ",     -gapopen          Gap open penalty\n-gap_open\n-gpo"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_gapextension_gap_extension
  doc: ",     -gapextension     Gap extension penalty\n-gap_ext\n-gpe"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_terminalgapextensionpenalty_terminal_gap
  doc: ",     -terminal_gap_extension_penalty Terminal gap penalties\n-tgpe"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_matrixbonus_constant_added
  doc: ",     -matrix_bonus     A constant added to the substitution matrix.\n-bonus"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_sort_order_appear
  doc: ",     -sort            The order in which the sequences appear in the output\
    \ alignment.\n<input, tree, gaps.>"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_feature_selects_feature
  doc: ",     -feature          Selects feature mode and specifies which features\
    \ are to be used:\ne.g. all, maxplp, STRUCT, PFAM-A...."
  type: boolean
  inputBinding:
    prefix: -g
- id: in_same_feature_score
  doc: "Score for aligning same features\n-diff_feature_score          Penalty for\
    \ aligning different features"
  type: boolean
  inputBinding:
    prefix: -same_feature_score
- id: in_distance_distance_methodwupair
  doc: ",     -distance         Distance method.\n<wu,pair>"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_guidetree_guide_tree
  doc: ",     -guide-tree       Guide tree method.\n-tree             <nj,upgma>"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_zcutoff_parameter_used
  doc: ",     -zcutoff         Parameter used in the wu-manber based distance calculation\n\
    -i,     -input            The input file.\n-infile\n-in\n-o,     -output     \
    \      The output file.\n-outfile\n-out\n-a,     -gap_inc           Parameter\
    \ increases gap penalties depending on the number of existing gaps\n-f,     -format\
    \           The output format:\n<fasta, msf, aln, clu, macsim>\n-q,     -quiet\
    \            Print nothing to STDERR.\nRead nothing from STDIN\nExamples:\nUsing\
    \ pipes:\nkalign2 [OPTIONS] < [INFILE]   > [OUTFILE]\nmore [INFILE] |  kalign2\
    \ [OPTIONS] > [OUTFILE]\nRelaxed gap penalties:\nkalign2 -gpo 60 -gpe 9 -tgpe\
    \ 0 -bonus 0 < [INFILE]   > [OUTFILE]\nFeature alignment with pairwise alignment\
    \ based distance method and NJ guide tree:\nkalign2 -in test.xml -distance pair\
    \ -tree nj -sort gaps -feature STRUCT -format macsim -out test.macsim\n"
  type: boolean
  inputBinding:
    prefix: -z
- id: in_k_align_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kalign
