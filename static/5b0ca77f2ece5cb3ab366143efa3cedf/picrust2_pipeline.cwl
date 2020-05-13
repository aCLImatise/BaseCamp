class: CommandLineTool
id: picrust2_pipeline.py.cwl
inputs:
- id: study_fast_a
  doc: FASTA of unaligned study sequences (i.e. OTUs or ASVs).
  type: File
  inputBinding:
    prefix: --study_fasta
- id: input
  doc: Input table of sequence abundances (BIOM, TSV or mothur shared file format).
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: Output folder for final files.
  type: File
  inputBinding:
    prefix: --output
- id: processes
  doc: 'Number of processes to run in parallel (default: 1).'
  type: string
  inputBinding:
    prefix: --processes
- id: ref_dir
  doc: 'Directory containing reference sequence files (default: /tmp/tmpjqcugf20/lib/python3.6/site-
    packages/picrust2/default_files/prokaryotic/pro_ref). Please see the online documentation
    for how to name the files in this directory.'
  type: File
  inputBinding:
    prefix: --ref_dir
- id: in_traits
  doc: 'Comma-delimited list (with no spaces) of which gene families to predict from
    this set: COG, EC, KO, PFAM, TIGRFAM. Note that EC numbers will always be predicted
    unless --no_pathways is set (default: EC,KO).'
  type: string
  inputBinding:
    prefix: --in_traits
- id: custom_trait_tables
  doc: Optional path to custom trait tables with gene families as columns and genomes
    as rows (overrides --in_traits setting) to be used for hidden-state prediction.
    Multiple tables can be specified by delimiting filenames by commas. Importantly,
    the first custom table specified will be used for inferring pathway abundances.
    Typically this command would be used with a custom marker gene table (--marker_gene_table)
    as well.
  type: File
  inputBinding:
    prefix: --custom_trait_tables
- id: marker_gene_table
  doc: Path to marker gene copy number table (16S copy numbers by default).
  type: File
  inputBinding:
    prefix: --marker_gene_table
- id: pathway_map
  doc: 'MinPath mapfile. The default mapfile maps MetaCyc reactions to prokaryotic
    pathways (default: /tmp/tmpjqcugf20/lib/python3.6/site-packages/picrust2/ default_files/pathway_mapfiles/metacyc_path2rxn_struc_
    filt_pro.txt).'
  type: string
  inputBinding:
    prefix: --pathway_map
- id: reaction_func
  doc: 'Functional database to use as reactions for inferring pathway abundances (default:
    EC). This should be either the short-form of the database as specified in --in_traits,
    or the path to the file as would be specified for --custom_trait_tables. Note
    that when functions besides the default EC numbers are used typically the --no_regroup
    option would also be set.'
  type: string
  inputBinding:
    prefix: --reaction_func
- id: no_pathways
  doc: Flag to indicate that pathways should NOT be inferred (otherwise they will
    be inferred by default). Predicted EC number abundances are used to infer pathways
    when the default reference files are used.
  type: boolean
  inputBinding:
    prefix: --no_pathways
- id: regroup_map
  doc: 'Mapfile of ids to regroup gene families to before running MinPath. The default
    mapfile is for regrouping EC numbers to MetaCyc reactions (default: /tmp/tmpjqcugf20/lib/python3.6/site-packages/picrust2/
    default_files/pathway_mapfiles/ec_level4_to_metacyc_rx n.tsv).'
  type: string
  inputBinding:
    prefix: --regroup_map
- id: no_regroup
  doc: Do not regroup input gene families to reactions as specified in the regrouping
    mapfile. This option should only be used if you are using custom reference and/or
    mapping files.
  type: boolean
  inputBinding:
    prefix: --no_regroup
- id: stratified
  doc: Flag to indicate that stratified tables should be generated at all steps (will
    increase run-time).
  type: boolean
  inputBinding:
    prefix: --stratified
- id: max_nsti
  doc: 'Sequences with NSTI values above this value will be excluded (default: 2).'
  type: double
  inputBinding:
    prefix: --max_nsti
- id: min_reads
  doc: 'Minimum number of reads across all samples for each input ASV. ASVs below
    this cut-off will be counted as part of the "RARE" category in the stratified
    output (default: 1).'
  type: long
  inputBinding:
    prefix: --min_reads
- id: min_samples
  doc: 'Minimum number of samples that an ASV needs to be identfied within. ASVs below
    this cut-off will be counted as part of the "RARE" category in the stratified
    output (default: 1).'
  type: long
  inputBinding:
    prefix: --min_samples
- id: hsp_method
  doc: 'HSP method to use."mp": predict discrete traits using max parsimony. "emp_prob":
    predict discrete traits based on empirical state probabilities across tips. "subtree_average":
    predict continuous traits using subtree averaging. "pic": predict continuous traits
    with phylogentic independent contrast. "scp": reconstruct continuous traits using
    squared-change parsimony (default: mp).'
  type: string
  inputBinding:
    prefix: --hsp_method
- id: min_align
  doc: 'Proportion of the total length of an input query sequence that must align
    with reference sequences. Any sequences with lengths below this value after making
    an alignment with reference sequences will be excluded from the placement and
    all subsequent steps. (default: 0).'
  type: long
  inputBinding:
    prefix: --min_align
- id: skip_nsti
  doc: Do not calculate nearest-sequenced taxon index (NSTI).
  type: boolean
  inputBinding:
    prefix: --skip_nsti
- id: skip_min_path
  doc: Do not run MinPath to identify which pathways are present as a first pass (on
    by default).
  type: boolean
  inputBinding:
    prefix: --skip_minpath
- id: no_gap_fill
  doc: Do not perform gap filling before predicting pathway abundances (Gap filling
    is on otherwise by default.
  type: boolean
  inputBinding:
    prefix: --no_gap_fill
- id: coverage
  doc: Calculate pathway coverages as well as abundances, which are experimental and
    only useful for advanced users.
  type: boolean
  inputBinding:
    prefix: --coverage
- id: per_sequence_contrib
  doc: 'Flag to specify that MinPath is run on the genes contributed by each sequence
    (i.e. a predicted genome) individually. Note this will greatly increase the runtime.
    The output will be the predicted pathway abundance contributed by each individual
    sequence. This is in contrast to the default stratified output, which is the contribution
    to the community-wide pathway abundances. Pathway coverage stratified by contributing
    sequence will also be output when --coverage is set (default: False).'
  type: boolean
  inputBinding:
    prefix: --per_sequence_contrib
- id: wide_table
  doc: Output wide-format stratified table of metagenome and pathway predictions when
    "--stratified" is set. This is the deprecated method of generating stratified
    tables since it is extremely memory intensive. The stratified filenames contain
    "strat" rather than "contrib" when this option is used.
  type: boolean
  inputBinding:
    prefix: --wide_table
- id: skip_norm
  doc: Skip normalizing sequence abundances by predicted marker gene copy numbers
    (typically 16S rRNA genes). This step will be performed automatically unless this
    option is specified.
  type: boolean
  inputBinding:
    prefix: --skip_norm
- id: remove_intermediate
  doc: Remove the intermediate outfiles of the sequence placement and pathway inference
    steps.
  type: boolean
  inputBinding:
    prefix: --remove_intermediate
- id: verbose
  doc: Print out details as commands are run.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- picrust2_pipeline.py
