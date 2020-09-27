class: CommandLineTool
id: picrust2_pipeline.py.cwl
inputs:
- id: in_study_fast_a
  doc: "FASTA of unaligned study sequences (i.e. OTUs or\nASVs)."
  type: File
  inputBinding:
    prefix: --study_fasta
- id: in_input
  doc: "Input table of sequence abundances (BIOM, TSV or\nmothur shared file format)."
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output folder for final files.
  type: Directory
  inputBinding:
    prefix: --output
- id: in_processes
  doc: 'Number of processes to run in parallel (default: 1).'
  type: long
  inputBinding:
    prefix: --processes
- id: in_ref_dir
  doc: "Directory containing reference sequence files\n(default: /usr/local/lib/python3.6/site-\n\
    packages/picrust2/default_files/prokaryotic/pro_ref).\nPlease see the online documentation\
    \ for how to name\nthe files in this directory."
  type: File
  inputBinding:
    prefix: --ref_dir
- id: in_in_traits
  doc: "Comma-delimited list (with no spaces) of which gene\nfamilies to predict from\
    \ this set: COG, EC, KO, PFAM,\nTIGRFAM. Note that EC numbers will always be predicted\n\
    unless --no_pathways is set (default: EC,KO)."
  type: string
  inputBinding:
    prefix: --in_traits
- id: in_custom_trait_tables
  doc: "Optional path to custom trait tables with gene\nfamilies as columns and genomes\
    \ as rows (overrides\n--in_traits setting) to be used for hidden-state\nprediction.\
    \ Multiple tables can be specified by\ndelimiting filenames by commas. Importantly,\
    \ the first\ncustom table specified will be used for inferring\npathway abundances.\
    \ Typically this command would be\nused with a custom marker gene table\n(--marker_gene_table)\
    \ as well."
  type: File
  inputBinding:
    prefix: --custom_trait_tables
- id: in_marker_gene_table
  doc: "Path to marker gene copy number table (16S copy\nnumbers by default)."
  type: File
  inputBinding:
    prefix: --marker_gene_table
- id: in_pathway_map
  doc: "MinPath mapfile. The default mapfile maps MetaCyc\nreactions to prokaryotic\
    \ pathways (default:\n/usr/local/lib/python3.6/site-packages/picrust2/defaul\n\
    t_files/pathway_mapfiles/metacyc_path2rxn_struc_filt_p\nro.txt)."
  type: double
  inputBinding:
    prefix: --pathway_map
- id: in_reaction_func
  doc: "Functional database to use as reactions for inferring\npathway abundances\
    \ (default: EC). This should be\neither the short-form of the database as specified\
    \ in\n--in_traits, or the path to the file as would be\nspecified for --custom_trait_tables.\
    \ Note that when\nfunctions besides the default EC numbers are used\ntypically\
    \ the --no_regroup option would also be set."
  type: File
  inputBinding:
    prefix: --reaction_func
- id: in_no_pathways
  doc: "Flag to indicate that pathways should NOT be inferred\n(otherwise they will\
    \ be inferred by default).\nPredicted EC number abundances are used to infer\n\
    pathways when the default reference files are used."
  type: boolean
  inputBinding:
    prefix: --no_pathways
- id: in_regroup_map
  doc: "Mapfile of ids to regroup gene families to before\nrunning MinPath. The default\
    \ mapfile is for regrouping\nEC numbers to MetaCyc reactions (default:\n/usr/local/lib/python3.6/site-packages/picrust2/defaul\n\
    t_files/pathway_mapfiles/ec_level4_to_metacyc_rxn.tsv)\n."
  type: double
  inputBinding:
    prefix: --regroup_map
- id: in_no_regroup
  doc: "Do not regroup input gene families to reactions as\nspecified in the regrouping\
    \ mapfile. This option\nshould only be used if you are using custom reference\n\
    and/or mapping files."
  type: boolean
  inputBinding:
    prefix: --no_regroup
- id: in_stratified
  doc: "Flag to indicate that stratified tables should be\ngenerated at all steps\
    \ (will increase run-time)."
  type: boolean
  inputBinding:
    prefix: --stratified
- id: in_max_nsti
  doc: "Sequences with NSTI values above this value will be\nexcluded (default: 2)."
  type: double
  inputBinding:
    prefix: --max_nsti
- id: in_min_reads
  doc: "Minimum number of reads across all samples for each\ninput ASV. ASVs below\
    \ this cut-off will be counted as\npart of the \"RARE\" category in the stratified\
    \ output\n(default: 1)."
  type: long
  inputBinding:
    prefix: --min_reads
- id: in_min_samples
  doc: "Minimum number of samples that an ASV needs to be\nidentfied within. ASVs\
    \ below this cut-off will be\ncounted as part of the \"RARE\" category in the\n\
    stratified output (default: 1)."
  type: long
  inputBinding:
    prefix: --min_samples
- id: in_hsp_method
  doc: "HSP method to use.\"mp\": predict discrete traits using\nmax parsimony. \"\
    emp_prob\": predict discrete traits\nbased on empirical state probabilities across\
    \ tips.\n\"subtree_average\": predict continuous traits using\nsubtree averaging.\
    \ \"pic\": predict continuous traits\nwith phylogentic independent contrast. \"\
    scp\":\nreconstruct continuous traits using squared-change\nparsimony (default:\
    \ mp)."
  type: string
  inputBinding:
    prefix: --hsp_method
- id: in_min_align
  doc: "Proportion of the total length of an input query\nsequence that must align\
    \ with reference sequences. Any\nsequences with lengths below this value after\
    \ making\nan alignment with reference sequences will be excluded\nfrom the placement\
    \ and all subsequent steps. (default:\n0)."
  type: long
  inputBinding:
    prefix: --min_align
- id: in_skip_nsti
  doc: Do not calculate nearest-sequenced taxon index (NSTI).
  type: boolean
  inputBinding:
    prefix: --skip_nsti
- id: in_skip_min_path
  doc: "Do not run MinPath to identify which pathways are\npresent as a first pass\
    \ (on by default)."
  type: boolean
  inputBinding:
    prefix: --skip_minpath
- id: in_no_gap_fill
  doc: "Do not perform gap filling before predicting pathway\nabundances (Gap filling\
    \ is on otherwise by default."
  type: boolean
  inputBinding:
    prefix: --no_gap_fill
- id: in_coverage
  doc: "Calculate pathway coverages as well as abundances,\nwhich are experimental\
    \ and only useful for advanced\nusers."
  type: boolean
  inputBinding:
    prefix: --coverage
- id: in_per_sequence_contrib
  doc: "Flag to specify that MinPath is run on the genes\ncontributed by each sequence\
    \ (i.e. a predicted genome)\nindividually. Note this will greatly increase the\n\
    runtime. The output will be the predicted pathway\nabundance contributed by each\
    \ individual sequence.\nThis is in contrast to the default stratified output,\n\
    which is the contribution to the community-wide\npathway abundances. Pathway coverage\
    \ stratified by\ncontributing sequence will also be output when\n--coverage is\
    \ set (default: False)."
  type: boolean
  inputBinding:
    prefix: --per_sequence_contrib
- id: in_wide_table
  doc: "Output wide-format stratified table of metagenome and\npathway predictions\
    \ when \"--stratified\" is set. This\nis the deprecated method of generating stratified\n\
    tables since it is extremely memory intensive. The\nstratified filenames contain\
    \ \"strat\" rather than\n\"contrib\" when this option is used."
  type: boolean
  inputBinding:
    prefix: --wide_table
- id: in_skip_norm
  doc: "Skip normalizing sequence abundances by predicted\nmarker gene copy numbers\
    \ (typically 16S rRNA genes).\nThis step will be performed automatically unless\
    \ this\noption is specified."
  type: boolean
  inputBinding:
    prefix: --skip_norm
- id: in_remove_intermediate
  doc: "Remove the intermediate outfiles of the sequence\nplacement and pathway inference\
    \ steps."
  type: boolean
  inputBinding:
    prefix: --remove_intermediate
- id: in_verbose
  doc: Print out details as commands are run.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output folder for final files.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- picrust2_pipeline.py
