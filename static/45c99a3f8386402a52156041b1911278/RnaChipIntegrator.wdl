version 1.0

task RnaChipIntegrator {
  input {
    Int? cut_off
    String? edge
    Boolean? only_de
    Int? number
    String? promoter_region
    String? name
    Boolean? compact
    Boolean? summary
    Boolean? pad
    Boolean? xls_x
    String? cutoffs
    Array[String] specify_genes_files
    Array[String] specify_multiple_files
    String? n_processors
    Boolean? split_outputs
    String? analyses
    String? feature
    String? peak_cols
    String? peak_id
    String? var_19
    String? var_20
  }
  command <<<
    RnaChipIntegrator \
      ~{var_19} \
      ~{var_20} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(edge) then ("--edge " +  '"' + edge + '"') else ""} \
      ~{true="--only-DE" false="" only_de} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(promoter_region) then ("--promoter_region " +  '"' + promoter_region + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--compact" false="" compact} \
      ~{true="--summary" false="" summary} \
      ~{true="--pad" false="" pad} \
      ~{true="--xlsx" false="" xls_x} \
      ~{if defined(cutoffs) then ("--cutoffs " +  '"' + cutoffs + '"') else ""} \
      ~{if defined(specify_genes_files) then ("--genes " +  '"' + specify_genes_files + '"') else ""} \
      ~{if defined(specify_multiple_files) then ("--peaks " +  '"' + specify_multiple_files + '"') else ""} \
      ~{if defined(n_processors) then ("--nprocessors " +  '"' + n_processors + '"') else ""} \
      ~{true="--split-outputs" false="" split_outputs} \
      ~{if defined(analyses) then ("--analyses " +  '"' + analyses + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(peak_cols) then ("--peak_cols " +  '"' + peak_cols + '"') else ""} \
      ~{if defined(peak_id) then ("--peak_id " +  '"' + peak_id + '"') else ""}
  >>>
  parameter_meta {
    cut_off: "Maximum distance allowed between peaks and genes before being omitted from the analyses (default 1000000bp; set to zero for no cutoff, use --cutoffs instead to specify multiple distances)"
    edge: "Gene edges to consider when calculating distances between genes and peaks, either: 'tss' (default: only use gene TSS) or 'both' (use whichever of TSS or TES gives shortest distance)"
    only_de: "Only use genes flagged as differentially expressed in analyses (input gene data must include DE flags)"
    number: "Filter results after applying --cutoff[s] to report only the nearest MAX_CLOSEST number of pairs for each gene/peak from the analyses (default is to report all results)"
    promoter_region: "Define promoter region with respect to gene TSS in the form UPSTREAM,DOWNSTREAM (default -1000 to 100bp of TSS)"
    name: "Set basename for output files"
    compact: "Output all hits for each peak or gene on a single line (cannot be used with --summary)"
    summary: "Output 'summary' for each analysis, consisting of only the top hit for each peak or gene (cannot be used with --compact)"
    pad: "Where less than MAX_CLOSEST hits are found, pad output with blanks to ensure that MAX_CLOSEST hits are still reported (nb --pad is implied for --compact)"
    xls_x: "Output XLSX spreadsheet with results"
    cutoffs: "Comma-separated list of one or more maximum distances allowed between peaks and genes (bp). An analysis will be performed for each GENES-PEAKS pair at each cutoff distance (default 1000000bp; set to zero for no cutoff NB cannot be used in conjunction with the --cutoff option)"
    specify_genes_files: "Specify multiple genes files (if used then peaks file(s) must be specified using --peaks option)"
    specify_multiple_files: "Specify multiple peaks files (if used then genes file(s) must be specified using --genes option)"
    n_processors: "Number of processors/cores to run the program using (default: 1)"
    split_outputs: "In batch mode write results of each analysis to separate file (default is to write all results to single file)"
    analyses: "Select which analyses to run: can be one of 'all' (default, runs all available analyses), 'peak_centric' or 'gene_centric'"
    feature: "Rename 'gene' to FEATURE_TYPE in output (e.g. 'transcript' etc)"
    peak_cols: "List of 3 column indices (e.g. '1,4,5') indicating columns to use for chromosome, start and end from the input peak file (if not first three columns)"
    peak_id: "Column to use as an ID for each peak from the input peak file (first column is column 1). If specified then IDs will be transferred to the output files when peaks are reported"
    var_19: ""
    var_20: ""
  }
}