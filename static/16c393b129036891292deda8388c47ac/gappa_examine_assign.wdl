version 1.0

task GappaExamineAssign {
  input {
    File? j_place_path
    File? tax_on_file
    File? root_out_group
    File? taxonomy
    String? ranks_string
    String? sub_tax_o_path
    Int? max_level
    Float? distribution_ratio
    Float? consensus_thresh
    Boolean? resolve_missing_paths
    Directory? out_dir
    File? file_prefix
    File? file_suffix
    String? cami
    File? sample_id
    Boolean? krona
    Boolean? sativa
    Boolean? per_query_results
    Boolean? best_hit
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa examine assign \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(tax_on_file) then ("--taxon-file " +  '"' + tax_on_file + '"') else ""} \
      ~{if defined(root_out_group) then ("--root-outgroup " +  '"' + root_out_group + '"') else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(ranks_string) then ("--ranks-string " +  '"' + ranks_string + '"') else ""} \
      ~{if defined(sub_tax_o_path) then ("--sub-taxopath " +  '"' + sub_tax_o_path + '"') else ""} \
      ~{if defined(max_level) then ("--max-level " +  '"' + max_level + '"') else ""} \
      ~{if defined(distribution_ratio) then ("--distribution-ratio " +  '"' + distribution_ratio + '"') else ""} \
      ~{if defined(consensus_thresh) then ("--consensus-thresh " +  '"' + consensus_thresh + '"') else ""} \
      ~{if (resolve_missing_paths) then "--resolve-missing-paths" else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{if defined(file_suffix) then ("--file-suffix " +  '"' + file_suffix + '"') else ""} \
      ~{if defined(cami) then ("--cami " +  '"' + cami + '"') else ""} \
      ~{if defined(sample_id) then ("--sample-id " +  '"' + sample_id + '"') else ""} \
      ~{if (krona) then "--krona" else ""} \
      ~{if (sativa) then "--sativa" else ""} \
      ~{if (per_query_results) then "--per-query-results" else ""} \
      ~{if (best_hit) then "--best-hit" else ""} \
      ~{if (allow_file_overwriting) then "--allow-file-overwriting" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gappa:0.7.1--he513fc3_0"
  }
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED\\nList of jplace files or directories to process. For directories, only files with the extension `.jplace[.gz]` are processed."
    tax_on_file: ":FILE REQUIRED\\nFile containing a tab-separated list of reference taxon to taxonomic string assignments."
    root_out_group: ":FILE   Root the tree by the outgroup taxa defined in the specified file."
    taxonomy: ":FILE        EXPERIMENTAL: File containing a tab-separated list defining the taxonomy. If mapping is incomplete (for example if the output taxonomy shall be NCBI, but SILVA was used as the basis in the --taxon-file) a best-effort mapping is attempted."
    ranks_string: "=superkingdom|phylum|class|order|family|genus|species\\nString specifying the rank names, in order, to which the taxonomy adheres. Required when using the CAMI output format. Assignments not adhereing to this constrained will be collapsed to the last valid mapping\\nEXAMPLE: superkingdom|phylum|class|order|family|genus|species"
    sub_tax_o_path: "Taxopath (example: Eukaryota;Animalia;Chordata) by which the high level summary should be filtered. Doesn't affect intermediate results, and an unfiltered verison will be printed as well."
    max_level: "=0          Maximal level of the taxonomy to be printed. Default is 0, that is, the whole taxonomy is printed. If set to a value about 0, only this many levels are printed. That is, taxonomic levels below the specified one are omitted."
    distribution_ratio: ":FLOAT in [0 - 1]=-1\\nRatio by which LWR is split between annotations if an edge has two possible annotations. Specifies the amount going to the proximal annotation. If not set program will determine the ratio automatically from the 'distal length' specified per placement."
    consensus_thresh: ":FLOAT in [0 - 1]=1\\nFor assignment of taxonomic labels to the reference tree, require this consensus threshold. Example: if set to 0.6, and 60% of an inner node's descendants share a taxonomic path, set that path at the inner node."
    resolve_missing_paths: "Should the taxon file be incomplete and leave some taxa without taxopaths, fill in the missing node labels using the closest (in the tree) label.\\nIf not specified, those parts of the tree remain unlabelled, and their placements unassigned."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    file_suffix: "File suffix for output files"
    cami: ": --taxonomy    EXPERIMENTAL: Print result in the CAMI Taxonomic Profiling Output Format."
    sample_id: "Needs: --cami\\nSample-ID string to be used in the CAMI output file"
    krona: "Print result in the Krona text format."
    sativa: "Print result as SATIVA would."
    per_query_results: "Print intermediate / per-query results (per_query.tsv)."
    best_hit: "In the per-query results, only print the taxonomic path with the highest LWR."
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=1            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
  output {
    File out_stdout = stdout()
    File out_taxonomy = "${in_taxonomy}"
    File out_file_prefix = "${in_file_prefix}"
    File out_file_suffix = "${in_file_suffix}"
    File out_sample_id = "${in_sample_id}"
    File out_log_file = "${in_log_file}"
  }
}