version 1.0

task PathwayPipelinepy {
  input {
    String? input_tsv_table
    Directory? out_dir
    Float? mapping_pathways_reactions
    Boolean? skip_min_path
    Boolean? no_gap_fill
    Directory? intermediate
    Int? processes
    Boolean? no_regroup
    Boolean? coverage
    Float? regroup_map
    Boolean? per_sequence_contrib
    File? per_sequence_abun
    File? per_sequence_function
    Boolean? wide_table
    Boolean? verbose
  }
  command <<<
    pathway_pipeline_py \
      ~{if defined(input_tsv_table) then ("--input " +  '"' + input_tsv_table + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(mapping_pathways_reactions) then ("--map " +  '"' + mapping_pathways_reactions + '"') else ""} \
      ~{if (skip_min_path) then "--skip_minpath" else ""} \
      ~{if (no_gap_fill) then "--no_gap_fill" else ""} \
      ~{if defined(intermediate) then ("--intermediate " +  '"' + intermediate + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (no_regroup) then "--no_regroup" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if defined(regroup_map) then ("--regroup_map " +  '"' + regroup_map + '"') else ""} \
      ~{if (per_sequence_contrib) then "--per_sequence_contrib" else ""} \
      ~{if defined(per_sequence_abun) then ("--per_sequence_abun " +  '"' + per_sequence_abun + '"') else ""} \
      ~{if defined(per_sequence_function) then ("--per_sequence_function " +  '"' + per_sequence_function + '"') else ""} \
      ~{if (wide_table) then "--wide_table" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/picrust2:2.4.1--py_0"
  }
  parameter_meta {
    input_tsv_table: "Input TSV table of gene family abundances (either the\\nunstratified or stratified output of\\nmetagenome_pipeline.py)."
    out_dir: "Output folder for pathway abundance output."
    mapping_pathways_reactions: "Mapping of pathways to reactions. The default mapfile\\nmaps MetaCyc reactions to prokaryotic MetaCyc pathways\\n(default: /usr/local/lib/python3.6/site-packages/picru\\nst2/default_files/pathway_mapfiles/metacyc_path2rxn_st\\nruc_filt_pro.txt)."
    skip_min_path: "Do not run MinPath to identify which pathways are\\npresent as a first pass (on by default)."
    no_gap_fill: "Do not perform gap filling before predicting pathway\\nabundances (Gap filling is on otherwise by default."
    intermediate: "Output folder for intermediate files (will be deleted\\notherwise)."
    processes: "Number of processes to run in parallel (default: 1)."
    no_regroup: "Do not regroup input gene families to reactions as\\nspecified in the regrouping mapfile."
    coverage: "Calculate pathway coverages as well as abundances,\\nwhich are experimental and only useful for advanced\\nusers."
    regroup_map: "Mapfile of ids to regroup gene families to before\\nrunning MinPath. The default mapfile is for regrouping\\nEC numbers to MetaCyc reactions (default:\\n/usr/local/lib/python3.6/site-packages/picrust2/defaul\\nt_files/pathway_mapfiles/ec_level4_to_metacyc_rxn.tsv)\\n."
    per_sequence_contrib: "Flag to specify that MinPath is run on the genes\\ncontributed by each sequence (i.e. a predicted genome)\\nindividually. Note this will greatly increase the\\nruntime. The output will be the predicted pathway\\nabundance contributed by each individual sequence.\\nThis is in contrast to the default stratified output,\\nwhich is the contribution to the community-wide\\npathway abundances. Experimental pathway coverage\\nstratified by contributing sequence will also be\\noutput when --coverage is set. Options\\n--per_sequence_contrib and --per_sequence_function\\nneed to be set when this option is used (default:\\nFalse)."
    per_sequence_abun: "Path to table of sequence abundances across samples\\nnormalized by marker copy number (typically the\\nnormalized sequence abundance table output at the\\nmetagenome pipeline step). This input is required when\\nthe --per_sequence_contrib option is set. (default:\\nNone)."
    per_sequence_function: "Path to table of function abundances per sequence,\\nwhich was outputted at the hidden-state prediction\\nstep. This input is required when the\\n--per_sequence_contrib option is set. Note that this\\nfile should be the same input table as used for the\\nmetagenome pipeline step (default: None)."
    wide_table: "Flag to specify that wide-format stratified table\\nshould be output rather than metagenome contribution\\ntable. This is the deprecated method of generating\\nstratified tables since it is extremely memory\\nintensive (default: False)."
    verbose: "If specified, print out wrapped commands and other\\ndetails to screen."
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
    Directory out_intermediate = "${in_intermediate}"
  }
}