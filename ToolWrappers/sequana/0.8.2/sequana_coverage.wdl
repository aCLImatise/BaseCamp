version 1.0

task SequanaCoverage {
  input {
    File? input_file_bed
    Int? chromosome
    Boolean? circular
    Directory? output_directory
    Boolean? quiet
    String? genbank
    Int? reference
    Int? window_gc
    Int? n_levels
    Int? window_median
    Int? mixture_models
    String? low_threshold
    String? high_threshold
    Int? threshold
    Float? clustering_parameter
    Boolean? length_chunk_used
    Boolean? merge_consecutive_data
    Int? cnv_clustering
    String? download_reference
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
      ~{if (circular) then "--circular" else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
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
      ~{if (length_chunk_used) then "-s" else ""} \
      ~{if (merge_consecutive_data) then "-B" else ""} \
      ~{if defined(cnv_clustering) then ("--cnv-clustering " +  '"' + cnv_clustering + '"') else ""} \
      ~{if defined(download_reference) then ("--download-reference " +  '"' + download_reference + '"') else ""}
  >>>
  parameter_meta {
    input_file_bed: "Input file in BED or BAM format. If a BAM file is\\nprovided, it will be converted locally to a BED file\\nusing genomecov, which must be installed. (default:\\nNone)"
    chromosome: "Chromosome number (if only one chromosome found, the\\nsingle chromosome is chosen automatically). Otherwise\\nall chromosomes are analysed. You may want to analyse\\nonly one in which case, use this parameter (e.g., -c\\n1). !!START AT INDEX 0 !! (default: -1)"
    circular: "If the DNA of the organism is circular (typically\\nviruses or bacteria), set to True (default: False)"
    output_directory: "name of the output (report) directory. (default:\\nreport)"
    quiet: "--no-html             Do not create any HTML reports. Save ROIs and\\nstatistics only. (default: False)\\n--no-multiqc          Do not create any multiqc HTML page. (default: False)\\n--debug-level LOGGING_LEVEL\\nset to DEBUG, INFO, WARNING, CRITICAL, ERROR (default:\\nINFO)\\n--level LOGGING_LEVEL\\nset to DEBUG, INFO, WARNING, CRITICAL, ERROR (default:\\nINFO)"
    genbank: "a valid genbank annotation (default: None)"
    reference: "If available, you can provide a reference (ENA/NCBI).\\nIt must have the same length as the one used to create\\nthe BAM or BED file. If provided, it is used to create\\nthe coverage versus GC content image (default: None)"
    window_gc: "Length of the running window to compute the GC content\\n(default: 201)"
    n_levels: "Number of levels in the contour (default: 3)"
    window_median: "Length of the running median window (default 20001,\\nrecommended for bacteria). For short genome (below\\n100000 bases), we set this parameter to one fifth of\\nthe genome length . (default: 20001)"
    mixture_models: "Number of mixture models to use (default 2, although\\nif sequencing depth is below 8, k is set to 1\\nautomatically). To ignore that behaviour set k to the\\nrequired value (default: 2)"
    low_threshold: "lower threshold (zscore) of the confidence interval.\\nOverwrite value given by --threshold/-T (default:\\nNone)"
    high_threshold: "higher threshold (zscore) of the confidence interval.\\nOverwrite value given by --threshold/-T (default:\\nNone)"
    threshold: "set lower and higher thresholds of the confidence\\ninterval. (default: 4)"
    clustering_parameter: "set lower and higher double threshold parameter (in\\n[0,1]). Do not use value close to zero. Ideally,\\naround 0.5. lower value will tend to cluster more than\\nhigher value (default: 0.5)"
    length_chunk_used: "[minimum=1000000], --chunk-size [minimum=1000000]\\nLength of the chunk to be used for the analysis.\\n(default: 5000000)"
    merge_consecutive_data: "[minimum=2], --binning [minimum=2]\\nmerge consecutive (non overlapping) data points,\\ntaking the mean. This is useful for large genome (e.g.\\nhuman). This allows a faster computation, especially\\nfor CNV detection were only large windows are of\\ninterest. For instance, using a binning of 50 or 100\\nallows the human genome to be analysed. (default:\\nNone)"
    cnv_clustering: "Two consecutive ROIs are merged when their distance in\\nbases is below this parameter. If set to -1, not used.\\n(default: -1)"
    download_reference: "--download-genbank DOWNLOAD_GENBANK\\n--database {ENA,EUtils}\\nDownload the reference from one of these database\\n(default ENA) (default: ENA)"
    welcome: ""
    to: ""
    se_quan_a: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}