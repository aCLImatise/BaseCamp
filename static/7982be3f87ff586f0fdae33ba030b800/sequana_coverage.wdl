version 1.0

task SequanaCoverage {
  input {
    String? input_file_bed
    String? chromosome
    Boolean? circular
    Boolean? no_html
    Boolean? no_multi_qc
    String? debug_level
    String? level
    String? genbank
    String? reference
    String? window_gc
    String? n_levels
    String? window_median
    String? mixture_models
    String? low_threshold
    String? high_threshold
    String? threshold
    String? clustering_parameter
    Boolean? length_chunk_used
    Boolean? merge_consecutive_points
    String? cnv_clustering
    String? database
    String welcome
    String to
    String se_quan_a
  }
  command <<<
    sequana_coverage \
      ~{welcome} \
      ~{to} \
      ~{se_quan_a} \
      ~{if defined(input_file_bed) then ("--input " +  '"' + input_file_bed + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{true="--circular" false="" circular} \
      ~{true="--no-html" false="" no_html} \
      ~{true="--no-multiqc" false="" no_multi_qc} \
      ~{if defined(debug_level) then ("--debug-level " +  '"' + debug_level + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(genbank) then ("--genbank " +  '"' + genbank + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(window_gc) then ("--window-gc " +  '"' + window_gc + '"') else ""} \
      ~{if defined(n_levels) then ("--nlevels " +  '"' + n_levels + '"') else ""} \
      ~{if defined(window_median) then ("--window-median " +  '"' + window_median + '"') else ""} \
      ~{if defined(mixture_models) then ("--mixture-models " +  '"' + mixture_models + '"') else ""} \
      ~{if defined(low_threshold) then ("--low-threshold " +  '"' + low_threshold + '"') else ""} \
      ~{if defined(high_threshold) then ("--high-threshold " +  '"' + high_threshold + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(clustering_parameter) then ("--clustering-parameter " +  '"' + clustering_parameter + '"') else ""} \
      ~{true="-s" false="" length_chunk_used} \
      ~{true="-B" false="" merge_consecutive_points} \
      ~{if defined(cnv_clustering) then ("--cnv-clustering " +  '"' + cnv_clustering + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""}
  >>>
  parameter_meta {
    input_file_bed: "Input file in BED or BAM format. If a BAM file is provided, it will be converted locally to a BED file using genomecov, which must be installed. (default: None)"
    chromosome: "Chromosome number (if only one chromosome found, the single chromosome is chosen automatically). Otherwise all chromosomes are analysed. You may want to analyse only one in which case, use this parameter (e.g., -c 1). !!START AT INDEX 0 !! (default: -1)"
    circular: "If the DNA of the organism is circular (typically viruses or bacteria), set to True (default: False)"
    no_html: "Do not create any HTML reports. Save ROIs and statistics only. (default: False)"
    no_multi_qc: "Do not create any multiqc HTML page. (default: False)"
    debug_level: "set to DEBUG, INFO, WARNING, CRITICAL, ERROR (default: INFO)"
    level: "set to DEBUG, INFO, WARNING, CRITICAL, ERROR (default: INFO)"
    genbank: "a valid genbank annotation (default: None)"
    reference: "If available, you can provide a reference (ENA/NCBI). It must have the same length as the one used to create the BAM or BED file. If provided, it is used to create the coverage versus GC content image (default: None)"
    window_gc: "Length of the running window to compute the GC content (default: 201)"
    n_levels: "Number of levels in the contour (default: 3)"
    window_median: "Length of the running median window (default 20001, recommended for bacteria). For short genome (below 100000 bases), we set this parameter to one fifth of the genome length . (default: 20001)"
    mixture_models: "Number of mixture models to use (default 2, although if sequencing depth is below 8, k is set to 1 automatically). To ignore that behaviour set k to the required value (default: 2)"
    low_threshold: "lower threshold (zscore) of the confidence interval. Overwrite value given by --threshold/-T (default: None)"
    high_threshold: "higher threshold (zscore) of the confidence interval. Overwrite value given by --threshold/-T (default: None)"
    threshold: "set lower and higher thresholds of the confidence interval. (default: 4)"
    clustering_parameter: "set lower and higher double threshold parameter (in [0,1]). Do not use value close to zero. Ideally, around 0.5. lower value will tend to cluster more than higher value (default: 0.5)"
    length_chunk_used: "[minimum=1000000], --chunk-size [minimum=1000000] Length of the chunk to be used for the analysis. (default: 5000000)"
    merge_consecutive_points: "[minimum=2], --binning [minimum=2] merge consecutive (non overlapping) data points, taking the mean. This is useful for large genome (e.g. human). This allows a faster computation, especially for CNV detection were only large windows are of interest. For instance, using a binning of 50 or 100 allows the human genome to be analysed. (default: None)"
    cnv_clustering: "Two consecutive ROIs are merged when their distance in bases is below this parameter. If set to -1, not used. (default: -1)"
    database: "Download the reference from one of these database (default ENA) (default: ENA)"
    welcome: ""
    to: ""
    se_quan_a: ""
  }
}