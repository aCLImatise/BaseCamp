version 1.0

task GappaExamineAssign {
  input {
    String? j_place_path
    String? tax_on_file
    String? root_out_group
    String? taxonomy
    String? ranks_string
    String? sub_tax_o_path
    String? max_level
    Float? distribution_ratio
    Boolean? resolve_missing_paths
    String? out_dir
    String? cami
    String? sample_id
    Boolean? krona
    Boolean? sativa
    Boolean? best_hit
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
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
      ~{true="--resolve-missing-paths" false="" resolve_missing_paths} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(cami) then ("--cami " +  '"' + cami + '"') else ""} \
      ~{if defined(sample_id) then ("--sample-id " +  '"' + sample_id + '"') else ""} \
      ~{true="--krona" false="" krona} \
      ~{true="--sativa" false="" sativa} \
      ~{true="--best-hit" false="" best_hit} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED List of jplace files or directories to process. For directories, only files with the extension .jplace are processed."
    tax_on_file: ":FILE REQUIRED File containing a tab-separated list of reference taxon to taxonomic string assignments."
    root_out_group: ":FILE   Root the tree by the outgroup taxa defined in the specified file."
    taxonomy: ":FILE        EXPERIMENTAL: File containing a tab-separated list defining the taxonomy. If mapping is incomplete (for example if the output taxonomy shall be NCBI, but SILVA was used as the basis in the --taxon-file) a best-effort mapping is attempted."
    ranks_string: "=superkingdom|phylum|class|order|family|genus|species String specifying the rank names, in order, to which the taxonomy adheres. Required when using the CAMI output format. Assignments not adhereing to this constrained will be collapsed to the last valid mapping EXAMPLE: superkingdom|phylum|class|order|family|genus|species"
    sub_tax_o_path: "Taxopath (example: Eukaryota;Animalia;Chordata) by which the high level summary should be filtered. Doesn't affect intermediate results, and an unfiltered verison will be printed as well."
    max_level: "=0          Maximal level of the taxonomy to be printed. Default is 0, that is, the whole taxonomy is printed. If set to a value about 0, only this many levels are printed. That is, taxonomic levels below the specified one are omitted."
    distribution_ratio: ":FLOAT in [0 - 1]=-1 Ratio by which LWR is split between annotations if an edge has two possible annotations. Specifies the amount going to the proximal annotation. If not set program will determine the ratio automatically from the 'distal length' specified per placement."
    resolve_missing_paths: "Should the taxon file be incomplete and leave some taxa without taxopaths, fill in the missing node labels using the closest (in the tree) label. If not specified, those parts of the tree remain unlabeled, and their placements unassigned."
    out_dir: "=.            Directory to write files to"
    cami: ": --taxonomy    EXPERIMENTAL: Print result in the CAMI Taxonomic Profiling Output Format."
    sample_id: "Needs: --cami Sample-ID string to be used in the CAMI output file"
    krona: "Print result in the Krona text format."
    sativa: "Print result as SATIVA would."
    best_hit: "In the intermediate results, only print the taxonomic path with the highest LWR."
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}