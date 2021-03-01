class: CommandLineTool
id: kalign.cwl
inputs:
- id: in_gap_open
  doc: Gap open penalty
  type: boolean?
  inputBinding:
    prefix: -gapopen
- id: in_gap_extension
  doc: Gap extension penalty
  type: boolean?
  inputBinding:
    prefix: -gapextension
- id: in_terminal_gap_extension_penalty
  doc: gap penalties
  type: string?
  inputBinding:
    prefix: -terminal_gap_extension_penalty
- id: in_matrix_bonus
  doc: A constant added to the substitution matrix.
  type: boolean?
  inputBinding:
    prefix: -matrix_bonus
- id: in_bonus
  doc: "The order in which the sequences appear in the output alignment.\n<input,\
    \ tree, gaps.>"
  type: boolean?
  inputBinding:
    prefix: -bonus
- id: in_feature
  doc: "Selects feature mode and specifies which features are to be used:\ne.g. all,\
    \ maxplp, STRUCT, PFAM-A...."
  type: boolean?
  inputBinding:
    prefix: -feature
- id: in_same_feature_score
  doc: Score for aligning same features
  type: boolean?
  inputBinding:
    prefix: -same_feature_score
- id: in_diff_feature_score
  doc: Penalty for aligning different features
  type: boolean?
  inputBinding:
    prefix: -diff_feature_score
- id: in_distance
  doc: "Distance method.\n<wu,pair>"
  type: boolean?
  inputBinding:
    prefix: -distance
- id: in_guide_tree
  doc: Guide tree method.
  type: boolean?
  inputBinding:
    prefix: -guide-tree
- id: in_tree
  doc: <nj,upgma>
  type: boolean?
  inputBinding:
    prefix: -tree
- id: in_z_cut_off
  doc: Parameter used in the wu-manber based distance calculation
  type: boolean?
  inputBinding:
    prefix: -zcutoff
- id: in_input
  doc: The input file.
  type: boolean?
  inputBinding:
    prefix: -input
- id: in_the_output_file
  doc: The output file.
  type: File?
  inputBinding:
    prefix: -infile
- id: in_parameter_increases_penalties
  doc: Parameter increases gap penalties depending on the number of existing gaps
  type: boolean?
  inputBinding:
    prefix: -outfile
- id: in_format
  doc: "The output format:\n<fasta, msf, aln, clu, macsim>"
  type: boolean?
  inputBinding:
    prefix: -format
- id: in_quiet
  doc: "Print nothing to STDERR.\nRead nothing from STDIN"
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_k_align_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_var_18
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_var_19
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_the_output_file
  doc: The output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_the_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- kalign
