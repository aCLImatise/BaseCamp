version 1.0

task RnaChipIntegrator {
  input {
    Int? cut_off
    String? edge
    Boolean? only_de
    Int? number
    Int? promoter_region
    String? name
    Boolean? compact
    Boolean? summary
    Boolean? pad
    Boolean? xls_x
    Int? cutoffs
    Array[File] specify_genes_files
    Array[File] specify_peaks_files
    Int? n_processors
    Boolean? split_outputs
    String? analyses
    String? feature
    File? peak_cols
    File? peak_id
    String? var_19
    String? var_20
  }
  command <<<
    RnaChipIntegrator \
      ~{var_19} \
      ~{var_20} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(edge) then ("--edge " +  '"' + edge + '"') else ""} \
      ~{if (only_de) then "--only-DE" else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(promoter_region) then ("--promoter_region " +  '"' + promoter_region + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (compact) then "--compact" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (pad) then "--pad" else ""} \
      ~{if (xls_x) then "--xlsx" else ""} \
      ~{if defined(cutoffs) then ("--cutoffs " +  '"' + cutoffs + '"') else ""} \
      ~{if defined(specify_genes_files) then ("--genes " +  '"' + specify_genes_files + '"') else ""} \
      ~{if defined(specify_peaks_files) then ("--peaks " +  '"' + specify_peaks_files + '"') else ""} \
      ~{if defined(n_processors) then ("--nprocessors " +  '"' + n_processors + '"') else ""} \
      ~{if (split_outputs) then "--split-outputs" else ""} \
      ~{if defined(analyses) then ("--analyses " +  '"' + analyses + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(peak_cols) then ("--peak_cols " +  '"' + peak_cols + '"') else ""} \
      ~{if defined(peak_id) then ("--peak_id " +  '"' + peak_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cut_off: "Maximum distance allowed between peaks and genes\\nbefore being omitted from the analyses (default\\n1000000bp; set to zero for no cutoff, use --cutoffs\\ninstead to specify multiple distances)"
    edge: "Gene edges to consider when calculating distances\\nbetween genes and peaks, either: 'tss' (default: only\\nuse gene TSS) or 'both' (use whichever of TSS or TES\\ngives shortest distance)"
    only_de: "Only use genes flagged as differentially expressed in\\nanalyses (input gene data must include DE flags)"
    number: "Filter results after applying --cutoff[s] to report\\nonly the nearest MAX_CLOSEST number of pairs for each\\ngene/peak from the analyses (default is to report all\\nresults)"
    promoter_region: "Define promoter region with respect to gene TSS in the\\nform UPSTREAM,DOWNSTREAM (default -1000 to 100bp of\\nTSS)"
    name: "Set basename for output files"
    compact: "Output all hits for each peak or gene on a single line\\n(cannot be used with --summary)"
    summary: "Output 'summary' for each analysis, consisting of only\\nthe top hit for each peak or gene (cannot be used with\\n--compact)"
    pad: "Where less than MAX_CLOSEST hits are found, pad output\\nwith blanks to ensure that MAX_CLOSEST hits are still\\nreported (nb --pad is implied for --compact)"
    xls_x: "Output XLSX spreadsheet with results"
    cutoffs: "Comma-separated list of one or more maximum distances\\nallowed between peaks and genes (bp). An analysis will\\nbe performed for each GENES-PEAKS pair at each cutoff\\ndistance (default 1000000bp; set to zero for no cutoff\\nNB cannot be used in conjunction with the --cutoff\\noption)"
    specify_genes_files: "Specify multiple genes files (if used then peaks\\nfile(s) must be specified using --peaks option)"
    specify_peaks_files: "Specify multiple peaks files (if used then genes\\nfile(s) must be specified using --genes option)"
    n_processors: "Number of processors/cores to run the program using\\n(default: 1)"
    split_outputs: "In batch mode write results of each analysis to\\nseparate file (default is to write all results to\\nsingle file)"
    analyses: "Select which analyses to run: can be one of 'all'\\n(default, runs all available analyses), 'peak_centric'\\nor 'gene_centric'"
    feature: "Rename 'gene' to FEATURE_TYPE in output (e.g.\\n'transcript' etc)"
    peak_cols: "List of 3 column indices (e.g. '1,4,5') indicating\\ncolumns to use for chromosome, start and end from the\\ninput peak file (if not first three columns)"
    peak_id: "Column to use as an ID for each peak from the input\\npeak file (first column is column 1). If specified\\nthen IDs will be transferred to the output files when\\npeaks are reported\\n"
    var_19: ""
    var_20: ""
  }
  output {
    File out_stdout = stdout()
  }
}