version 1.0

task Anvianalyzesynteny {
  input {
    File? genomes_storage
    Int? n_gram_window_range
    File? output_file
    String? annotation_source
    String? pan_db
    String? n_gram_source
    Boolean? list_annotation_sources
    Boolean? analyze_unknown_functions
    File? genome_names
    Boolean? first_functional_hit_only
    String n_grams
  }
  command <<<
    anvi_analyze_synteny \
      ~{n_grams} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if defined(n_gram_window_range) then ("--ngram-window-range " +  '"' + n_gram_window_range + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(annotation_source) then ("--annotation-source " +  '"' + annotation_source + '"') else ""} \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(n_gram_source) then ("--ngram-source " +  '"' + n_gram_source + '"') else ""} \
      ~{if (list_annotation_sources) then "--list-annotation-sources" else ""} \
      ~{if (analyze_unknown_functions) then "--analyze-unknown-functions" else ""} \
      ~{if defined(genome_names) then ("--genome-names " +  '"' + genome_names + '"') else ""} \
      ~{if (first_functional_hit_only) then "--first-functional-hit-only" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    genomes_storage: "Anvi'o genomes storage file (default: None)"
    n_gram_window_range: "The range of window sizes of Ngrams to analyze for\\nsynteny patterns.Please format the window-range as x:y\\n(e.g. Window sizes 2 to 4 would be denoted as: 2:4)\\n(default: 2:3)"
    output_file: "File path to store results. (default: None)"
    annotation_source: "NAME\\nGet functional annotations for a specific annotation\\nsource. You can use the flag '--list-annotation-\\nsources' to learn about what sources are available.\\n(default: None)"
    pan_db: "Anvi'o pan database (default: None)"
    n_gram_source: "If two annotation sources are provided, please choose\\none annotation source that will be used to calcuate\\nNgrams (e.g. gene_clusters, COG_FUNCTION) (default:\\nNone)"
    list_annotation_sources: "List available functional annotation sources.\\n(default: False)"
    analyze_unknown_functions: "Provide this flag if you want anvi-analyze-synteny to\\nreport Ngrams that contain gene calls that have no\\nannotation. (default: False)"
    genome_names: "Genome names to 'focus'. You can use this parameter to\\nlimit the genomes included in your analysis. You can\\nprovide these names as a comma-separated list of\\nnames, or you can put them in a file, where you have a\\nsingle genome name in each line, and provide the file\\npath. (default: None)"
    first_functional_hit_only: "Use this flag if you want to use on the first\\nfunctional annotation when making ngrams and assigning\\nannotations. In some cases, anvio reports more than\\none annotation when there are multiple good hits to\\nthe gene. When this happens, all annotations will be\\nreported in order of alignment score and delimited by\\n'!!!' e.g. 'COG123!!!COG456!!!COG789'. This flag will\\nreport 'COG123!!!COG456!!!COG789' as 'COG123'.\\n(default: False)"
    n_grams: "🍺 More on `anvi-analyze-synteny`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}