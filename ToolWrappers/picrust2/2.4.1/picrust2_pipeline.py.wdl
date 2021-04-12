version 1.0

task Picrust2Pipelinepy {
  input {
    File? study_fast_a
    File? input_table_sequence
    Directory? output_folder_final
    Int? processes
    String? sepp__tool
    File? ref_dir
    String? in_traits
    File? custom_trait_tables
    File? marker_gene_table
    Float? pathway_map
    File? reaction_func
    Boolean? no_pathways
    Float? regroup_map
    Boolean? no_regroup
    Boolean? stratified
    Float? max_nsti
    Int? min_reads
    Int? min_samples
    String? hsp_method
    Int? edge_exponent
    Int? min_align
    Boolean? skip_nsti
    Boolean? skip_min_path
    Boolean? no_gap_fill
    Boolean? coverage
    Boolean? per_sequence_contrib
    Boolean? wide_table
    Boolean? skip_norm
    Boolean? remove_intermediate
    Boolean? verbose
  }
  command <<<
    picrust2_pipeline_py \
      ~{if defined(study_fast_a) then ("--study_fasta " +  '"' + study_fast_a + '"') else ""} \
      ~{if defined(input_table_sequence) then ("--input " +  '"' + input_table_sequence + '"') else ""} \
      ~{if defined(output_folder_final) then ("--output " +  '"' + output_folder_final + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(sepp__tool) then ("-t " +  '"' + sepp__tool + '"') else ""} \
      ~{if defined(ref_dir) then ("--ref_dir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(in_traits) then ("--in_traits " +  '"' + in_traits + '"') else ""} \
      ~{if defined(custom_trait_tables) then ("--custom_trait_tables " +  '"' + custom_trait_tables + '"') else ""} \
      ~{if defined(marker_gene_table) then ("--marker_gene_table " +  '"' + marker_gene_table + '"') else ""} \
      ~{if defined(pathway_map) then ("--pathway_map " +  '"' + pathway_map + '"') else ""} \
      ~{if defined(reaction_func) then ("--reaction_func " +  '"' + reaction_func + '"') else ""} \
      ~{if (no_pathways) then "--no_pathways" else ""} \
      ~{if defined(regroup_map) then ("--regroup_map " +  '"' + regroup_map + '"') else ""} \
      ~{if (no_regroup) then "--no_regroup" else ""} \
      ~{if (stratified) then "--stratified" else ""} \
      ~{if defined(max_nsti) then ("--max_nsti " +  '"' + max_nsti + '"') else ""} \
      ~{if defined(min_reads) then ("--min_reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""} \
      ~{if defined(hsp_method) then ("--hsp_method " +  '"' + hsp_method + '"') else ""} \
      ~{if defined(edge_exponent) then ("--edge_exponent " +  '"' + edge_exponent + '"') else ""} \
      ~{if defined(min_align) then ("--min_align " +  '"' + min_align + '"') else ""} \
      ~{if (skip_nsti) then "--skip_nsti" else ""} \
      ~{if (skip_min_path) then "--skip_minpath" else ""} \
      ~{if (no_gap_fill) then "--no_gap_fill" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if (per_sequence_contrib) then "--per_sequence_contrib" else ""} \
      ~{if (wide_table) then "--wide_table" else ""} \
      ~{if (skip_norm) then "--skip_norm" else ""} \
      ~{if (remove_intermediate) then "--remove_intermediate" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/picrust2:2.4.1--py_0"
  }
  parameter_meta {
    study_fast_a: "FASTA of unaligned study sequences (i.e. OTUs or\\nASVs)."
    input_table_sequence: "Input table of sequence abundances (BIOM, TSV or\\nmothur shared file format)."
    output_folder_final: "Output folder for final files."
    processes: "Number of processes to run in parallel (default: 1)."
    sepp__tool: "|sepp, --placement_tool epa-ng|sepp\\nPlacement tool to use when placing sequences into\\nreference tree. One of \\\"epa-ng\\\" or \\\"sepp\\\" must be\\ninput (default: epa-ng)"
    ref_dir: "Directory containing reference sequence files\\n(default: /usr/local/lib/python3.6/site-\\npackages/picrust2/default_files/prokaryotic/pro_ref).\\nPlease see the online documentation for how to name\\nthe files in this directory."
    in_traits: "Comma-delimited list (with no spaces) of which gene\\nfamilies to predict from this set: COG, EC, KO, PFAM,\\nTIGRFAM. Note that EC numbers will always be predicted\\nunless --no_pathways is set (default: EC,KO)."
    custom_trait_tables: "Optional path to custom trait tables with gene\\nfamilies as columns and genomes as rows (overrides\\n--in_traits setting) to be used for hidden-state\\nprediction. Multiple tables can be specified by\\ndelimiting filenames by commas. Importantly, the first\\ncustom table specified will be used for inferring\\npathway abundances. Typically this command would be\\nused with a custom marker gene table\\n(--marker_gene_table) as well."
    marker_gene_table: "Path to marker gene copy number table (16S copy\\nnumbers by default)."
    pathway_map: "MinPath mapfile. The default mapfile maps MetaCyc\\nreactions to prokaryotic pathways (default:\\n/usr/local/lib/python3.6/site-packages/picrust2/defaul\\nt_files/pathway_mapfiles/metacyc_path2rxn_struc_filt_p\\nro.txt)."
    reaction_func: "Functional database to use as reactions for inferring\\npathway abundances (default: EC). This should be\\neither the short-form of the database as specified in\\n--in_traits, or the path to the file as would be\\nspecified for --custom_trait_tables. Note that when\\nfunctions besides the default EC numbers are used\\ntypically the --no_regroup option would also be set."
    no_pathways: "Flag to indicate that pathways should NOT be inferred\\n(otherwise they will be inferred by default).\\nPredicted EC number abundances are used to infer\\npathways when the default reference files are used."
    regroup_map: "Mapfile of ids to regroup gene families to before\\nrunning MinPath. The default mapfile is for regrouping\\nEC numbers to MetaCyc reactions (default:\\n/usr/local/lib/python3.6/site-packages/picrust2/defaul\\nt_files/pathway_mapfiles/ec_level4_to_metacyc_rxn.tsv)\\n."
    no_regroup: "Do not regroup input gene families to reactions as\\nspecified in the regrouping mapfile. This option\\nshould only be used if you are using custom reference\\nand/or mapping files."
    stratified: "Flag to indicate that stratified tables should be\\ngenerated at all steps (will increase run-time)."
    max_nsti: "Sequences with NSTI values above this value will be\\nexcluded (default: 2)."
    min_reads: "Minimum number of reads across all samples for each\\ninput ASV. ASVs below this cut-off will be counted as\\npart of the \\\"RARE\\\" category in the stratified output\\n(default: 1)."
    min_samples: "Minimum number of samples that an ASV needs to be\\nidentfied within. ASVs below this cut-off will be\\ncounted as part of the \\\"RARE\\\" category in the\\nstratified output (default: 1)."
    hsp_method: "HSP method to use.\\\"mp\\\": predict discrete traits using\\nmax parsimony. \\\"emp_prob\\\": predict discrete traits\\nbased on empirical state probabilities across tips.\\n\\\"subtree_average\\\": predict continuous traits using\\nsubtree averaging. \\\"pic\\\": predict continuous traits\\nwith phylogentic independent contrast. \\\"scp\\\":\\nreconstruct continuous traits using squared-change\\nparsimony (default: mp)."
    edge_exponent: "Setting for maximum parisomony hidden-state\\nprediction. Specifies weighting transition costs by\\nthe inverse length of edge lengths. If 0, then edge\\nlengths do not influence predictions. Must be a non-\\nnegative real-valued number (default: 0)."
    min_align: "Proportion of the total length of an input query\\nsequence that must align with reference sequences. Any\\nsequences with lengths below this value after making\\nan alignment with reference sequences will be excluded\\nfrom the placement and all subsequent steps. (default:\\n0)."
    skip_nsti: "Do not calculate nearest-sequenced taxon index (NSTI)."
    skip_min_path: "Do not run MinPath to identify which pathways are\\npresent as a first pass (on by default)."
    no_gap_fill: "Do not perform gap filling before predicting pathway\\nabundances (Gap filling is on otherwise by default."
    coverage: "Calculate pathway coverages as well as abundances,\\nwhich are experimental and only useful for advanced\\nusers."
    per_sequence_contrib: "Flag to specify that MinPath is run on the genes\\ncontributed by each sequence (i.e. a predicted genome)\\nindividually. Note this will greatly increase the\\nruntime. The output will be the predicted pathway\\nabundance contributed by each individual sequence.\\nThis is in contrast to the default stratified output,\\nwhich is the contribution to the community-wide\\npathway abundances. Pathway coverage stratified by\\ncontributing sequence will also be output when\\n--coverage is set (default: False)."
    wide_table: "Output wide-format stratified table of metagenome and\\npathway predictions when \\\"--stratified\\\" is set. This\\nis the deprecated method of generating stratified\\ntables since it is extremely memory intensive. The\\nstratified filenames contain \\\"strat\\\" rather than\\n\\\"contrib\\\" when this option is used."
    skip_norm: "Skip normalizing sequence abundances by predicted\\nmarker gene copy numbers (typically 16S rRNA genes).\\nThis step will be performed automatically unless this\\noption is specified."
    remove_intermediate: "Remove the intermediate outfiles of the sequence\\nplacement and pathway inference steps."
    verbose: "Print out details as commands are run."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder_final = "${in_output_folder_final}"
  }
}