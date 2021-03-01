class: CommandLineTool
id: pathway_pipeline.py.cwl
inputs:
- id: in_input
  doc: "Input TSV table of gene family abundances (either the\nunstratified or stratified\
    \ output of\nmetagenome_pipeline.py)."
  type: string?
  inputBinding:
    prefix: --input
- id: in_out_dir
  doc: Output folder for pathway abundance output.
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_map
  doc: "Mapping of pathways to reactions. The default mapfile\nmaps MetaCyc reactions\
    \ to prokaryotic MetaCyc pathways\n(default: /usr/local/lib/python3.6/site-packages/picru\n\
    st2/default_files/pathway_mapfiles/metacyc_path2rxn_st\nruc_filt_pro.txt)."
  type: double?
  inputBinding:
    prefix: --map
- id: in_skip_min_path
  doc: "Do not run MinPath to identify which pathways are\npresent as a first pass\
    \ (on by default)."
  type: boolean?
  inputBinding:
    prefix: --skip_minpath
- id: in_no_gap_fill
  doc: "Do not perform gap filling before predicting pathway\nabundances (Gap filling\
    \ is on otherwise by default."
  type: boolean?
  inputBinding:
    prefix: --no_gap_fill
- id: in_intermediate
  doc: "Output folder for intermediate files (will be deleted\notherwise)."
  type: Directory?
  inputBinding:
    prefix: --intermediate
- id: in_processes
  doc: 'Number of processes to run in parallel (default: 1).'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_no_regroup
  doc: "Do not regroup input gene families to reactions as\nspecified in the regrouping\
    \ mapfile."
  type: boolean?
  inputBinding:
    prefix: --no_regroup
- id: in_coverage
  doc: "Calculate pathway coverages as well as abundances,\nwhich are experimental\
    \ and only useful for advanced\nusers."
  type: boolean?
  inputBinding:
    prefix: --coverage
- id: in_regroup_map
  doc: "Mapfile of ids to regroup gene families to before\nrunning MinPath. The default\
    \ mapfile is for regrouping\nEC numbers to MetaCyc reactions (default:\n/usr/local/lib/python3.6/site-packages/picrust2/defaul\n\
    t_files/pathway_mapfiles/ec_level4_to_metacyc_rxn.tsv)\n."
  type: double?
  inputBinding:
    prefix: --regroup_map
- id: in_per_sequence_contrib
  doc: "Flag to specify that MinPath is run on the genes\ncontributed by each sequence\
    \ (i.e. a predicted genome)\nindividually. Note this will greatly increase the\n\
    runtime. The output will be the predicted pathway\nabundance contributed by each\
    \ individual sequence.\nThis is in contrast to the default stratified output,\n\
    which is the contribution to the community-wide\npathway abundances. Experimental\
    \ pathway coverage\nstratified by contributing sequence will also be\noutput when\
    \ --coverage is set. Options\n--per_sequence_contrib and --per_sequence_function\n\
    need to be set when this option is used (default:\nFalse)."
  type: boolean?
  inputBinding:
    prefix: --per_sequence_contrib
- id: in_per_sequence_abun
  doc: "Path to table of sequence abundances across samples\nnormalized by marker\
    \ copy number (typically the\nnormalized sequence abundance table output at the\n\
    metagenome pipeline step). This input is required when\nthe --per_sequence_contrib\
    \ option is set. (default:\nNone)."
  type: File?
  inputBinding:
    prefix: --per_sequence_abun
- id: in_per_sequence_function
  doc: "Path to table of function abundances per sequence,\nwhich was outputted at\
    \ the hidden-state prediction\nstep. This input is required when the\n--per_sequence_contrib\
    \ option is set. Note that this\nfile should be the same input table as used for\
    \ the\nmetagenome pipeline step (default: None)."
  type: File?
  inputBinding:
    prefix: --per_sequence_function
- id: in_wide_table
  doc: "Flag to specify that wide-format stratified table\nshould be output rather\
    \ than metagenome contribution\ntable. This is the deprecated method of generating\n\
    stratified tables since it is extremely memory\nintensive (default: False)."
  type: boolean?
  inputBinding:
    prefix: --wide_table
- id: in_verbose
  doc: "If specified, print out wrapped commands and other\ndetails to screen."
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Output folder for pathway abundance output.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_intermediate
  doc: "Output folder for intermediate files (will be deleted\notherwise)."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_intermediate)
hints: []
cwlVersion: v1.1
baseCommand:
- pathway_pipeline.py
