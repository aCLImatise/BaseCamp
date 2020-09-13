class: CommandLineTool
id: ../../../kalign.cwl
inputs:
- id: in_gapopen_gap_penalty
  doc: ',     -gapopen          Gap open penalty'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_gap_open
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gap_open
- id: in_gpo
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gpo
- id: in_gapextension_gap_extension
  doc: ',     -gapextension     Gap extension penalty'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_gap_ext
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gap_ext
- id: in_gpe
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gpe
- id: in_terminalgapextensionpenalty_terminal_gap
  doc: ',     -terminal_gap_extension_penalty Terminal gap penalties'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_tgp_e
  doc: ''
  type: boolean
  inputBinding:
    prefix: -tgpe
- id: in_matrixbonus_constant_added
  doc: ',     -matrix_bonus     A constant added to the substitution matrix.'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_bonus
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bonus
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
  doc: Score for aligning same features
  type: boolean
  inputBinding:
    prefix: -same_feature_score
- id: in_diff_feature_score
  doc: Penalty for aligning different features
  type: boolean
  inputBinding:
    prefix: -diff_feature_score
- id: in_distance_distance_methodwupair
  doc: ",     -distance         Distance method.\n<wu,pair>"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_guidetree_guide_tree
  doc: ',     -guide-tree       Guide tree method.'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_tree
  doc: <nj,upgma>
  type: boolean
  inputBinding:
    prefix: -tree
- id: in_zcutoff_parameter_used
  doc: ',     -zcutoff         Parameter used in the wu-manber based distance calculation'
  type: boolean
  inputBinding:
    prefix: -z
- id: in_input_input_file
  doc: ',     -input            The input file.'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_var_19
  doc: ''
  type: boolean
  inputBinding:
    prefix: -infile
- id: in_in
  doc: ''
  type: boolean
  inputBinding:
    prefix: -in
- id: in_output_output_file
  doc: ',     -output           The output file.'
  type: File
  inputBinding:
    prefix: -o
- id: in_var_22
  doc: ''
  type: boolean
  inputBinding:
    prefix: -outfile
- id: in_out
  doc: ''
  type: boolean
  inputBinding:
    prefix: -out
- id: in_gapinc_parameter_increases
  doc: ',     -gap_inc           Parameter increases gap penalties depending on the
    number of existing gaps'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_format_output_formatfasta
  doc: ",     -format           The output format:\n<fasta, msf, aln, clu, macsim>"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_quiet_print_nothing
  doc: ",     -quiet            Print nothing to STDERR.\nRead nothing from STDIN"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_k_align_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_var_28
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_29
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_output_file
  doc: ',     -output           The output file.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_output_file)
cwlVersion: v1.1
baseCommand:
- kalign
