version 1.0

task Picrust2Pipeline.py {
  input {
    File? study_fast_a
    File? input_table_sequence
    File? output_folder_final
    String? processes
    File? ref_dir
    String? in_traits
    File? custom_trait_tables
    File? marker_gene_table
    String? pathway_map
    String? reaction_func
    Boolean? no_pathways
    String? regroup_map
    Boolean? no_regroup
    Boolean? stratified
    Float? max_nsti
    Int? min_reads
    Int? min_samples
    String? hsp_method
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
    picrust2_pipeline.py \
      ~{if defined(study_fast_a) then ("--study_fasta " +  '"' + study_fast_a + '"') else ""} \
      ~{if defined(input_table_sequence) then ("--input " +  '"' + input_table_sequence + '"') else ""} \
      ~{if defined(output_folder_final) then ("--output " +  '"' + output_folder_final + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(ref_dir) then ("--ref_dir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(in_traits) then ("--in_traits " +  '"' + in_traits + '"') else ""} \
      ~{if defined(custom_trait_tables) then ("--custom_trait_tables " +  '"' + custom_trait_tables + '"') else ""} \
      ~{if defined(marker_gene_table) then ("--marker_gene_table " +  '"' + marker_gene_table + '"') else ""} \
      ~{if defined(pathway_map) then ("--pathway_map " +  '"' + pathway_map + '"') else ""} \
      ~{if defined(reaction_func) then ("--reaction_func " +  '"' + reaction_func + '"') else ""} \
      ~{true="--no_pathways" false="" no_pathways} \
      ~{if defined(regroup_map) then ("--regroup_map " +  '"' + regroup_map + '"') else ""} \
      ~{true="--no_regroup" false="" no_regroup} \
      ~{true="--stratified" false="" stratified} \
      ~{if defined(max_nsti) then ("--max_nsti " +  '"' + max_nsti + '"') else ""} \
      ~{if defined(min_reads) then ("--min_reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""} \
      ~{if defined(hsp_method) then ("--hsp_method " +  '"' + hsp_method + '"') else ""} \
      ~{if defined(min_align) then ("--min_align " +  '"' + min_align + '"') else ""} \
      ~{true="--skip_nsti" false="" skip_nsti} \
      ~{true="--skip_minpath" false="" skip_min_path} \
      ~{true="--no_gap_fill" false="" no_gap_fill} \
      ~{true="--coverage" false="" coverage} \
      ~{true="--per_sequence_contrib" false="" per_sequence_contrib} \
      ~{true="--wide_table" false="" wide_table} \
      ~{true="--skip_norm" false="" skip_norm} \
      ~{true="--remove_intermediate" false="" remove_intermediate} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    study_fast_a: "FASTA of unaligned study sequences (i.e. OTUs or ASVs)."
    input_table_sequence: "Input table of sequence abundances (BIOM, TSV or mothur shared file format)."
    output_folder_final: "Output folder for final files."
    processes: "Number of processes to run in parallel (default: 1)."
    ref_dir: "Directory containing reference sequence files (default: /tmp/tmpqdk0dqqj/lib/python3.6/site- packages/picrust2/default_files/prokaryotic/pro_ref). Please see the online documentation for how to name the files in this directory."
    in_traits: "Comma-delimited list (with no spaces) of which gene families to predict from this set: COG, EC, KO, PFAM, TIGRFAM. Note that EC numbers will always be predicted unless --no_pathways is set (default: EC,KO)."
    custom_trait_tables: "Optional path to custom trait tables with gene families as columns and genomes as rows (overrides --in_traits setting) to be used for hidden-state prediction. Multiple tables can be specified by delimiting filenames by commas. Importantly, the first custom table specified will be used for inferring pathway abundances. Typically this command would be used with a custom marker gene table (--marker_gene_table) as well."
    marker_gene_table: "Path to marker gene copy number table (16S copy numbers by default)."
    pathway_map: "MinPath mapfile. The default mapfile maps MetaCyc reactions to prokaryotic pathways (default: /tmp/tmpqdk0dqqj/lib/python3.6/site-packages/picrust2/ default_files/pathway_mapfiles/metacyc_path2rxn_struc_ filt_pro.txt)."
    reaction_func: "Functional database to use as reactions for inferring pathway abundances (default: EC). This should be either the short-form of the database as specified in --in_traits, or the path to the file as would be specified for --custom_trait_tables. Note that when functions besides the default EC numbers are used typically the --no_regroup option would also be set."
    no_pathways: "Flag to indicate that pathways should NOT be inferred (otherwise they will be inferred by default). Predicted EC number abundances are used to infer pathways when the default reference files are used."
    regroup_map: "Mapfile of ids to regroup gene families to before running MinPath. The default mapfile is for regrouping EC numbers to MetaCyc reactions (default: /tmp/tmpqdk0dqqj/lib/python3.6/site-packages/picrust2/ default_files/pathway_mapfiles/ec_level4_to_metacyc_rx n.tsv)."
    no_regroup: "Do not regroup input gene families to reactions as specified in the regrouping mapfile. This option should only be used if you are using custom reference and/or mapping files."
    stratified: "Flag to indicate that stratified tables should be generated at all steps (will increase run-time)."
    max_nsti: "Sequences with NSTI values above this value will be excluded (default: 2)."
    min_reads: "Minimum number of reads across all samples for each input ASV. ASVs below this cut-off will be counted as part of the \"RARE\" category in the stratified output (default: 1)."
    min_samples: "Minimum number of samples that an ASV needs to be identfied within. ASVs below this cut-off will be counted as part of the \"RARE\" category in the stratified output (default: 1)."
    hsp_method: "HSP method to use.\"mp\": predict discrete traits using max parsimony. \"emp_prob\": predict discrete traits based on empirical state probabilities across tips. \"subtree_average\": predict continuous traits using subtree averaging. \"pic\": predict continuous traits with phylogentic independent contrast. \"scp\": reconstruct continuous traits using squared-change parsimony (default: mp)."
    min_align: "Proportion of the total length of an input query sequence that must align with reference sequences. Any sequences with lengths below this value after making an alignment with reference sequences will be excluded from the placement and all subsequent steps. (default: 0)."
    skip_nsti: "Do not calculate nearest-sequenced taxon index (NSTI)."
    skip_min_path: "Do not run MinPath to identify which pathways are present as a first pass (on by default)."
    no_gap_fill: "Do not perform gap filling before predicting pathway abundances (Gap filling is on otherwise by default."
    coverage: "Calculate pathway coverages as well as abundances, which are experimental and only useful for advanced users."
    per_sequence_contrib: "Flag to specify that MinPath is run on the genes contributed by each sequence (i.e. a predicted genome) individually. Note this will greatly increase the runtime. The output will be the predicted pathway abundance contributed by each individual sequence. This is in contrast to the default stratified output, which is the contribution to the community-wide pathway abundances. Pathway coverage stratified by contributing sequence will also be output when --coverage is set (default: False)."
    wide_table: "Output wide-format stratified table of metagenome and pathway predictions when \"--stratified\" is set. This is the deprecated method of generating stratified tables since it is extremely memory intensive. The stratified filenames contain \"strat\" rather than \"contrib\" when this option is used."
    skip_norm: "Skip normalizing sequence abundances by predicted marker gene copy numbers (typically 16S rRNA genes). This step will be performed automatically unless this option is specified."
    remove_intermediate: "Remove the intermediate outfiles of the sequence placement and pathway inference steps."
    verbose: "Print out details as commands are run."
  }
}