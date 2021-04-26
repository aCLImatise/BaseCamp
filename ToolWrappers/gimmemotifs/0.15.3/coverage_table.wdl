version 1.0

task CoverageTable {
  input {
    File? peaks
    Boolean? data_files_bam
    Int? window
    Boolean? log_transform
    String? normalization
    String? top
    String? top_method
    Boolean? keep_duplicate_reads
    Boolean? keep_reads_mapq
    Int? n_threads
    File? var_file
  }
  command <<<
    coverage_table \
      ~{var_file} \
      ~{if defined(peaks) then ("--peaks " +  '"' + peaks + '"') else ""} \
      ~{if (data_files_bam) then "-d" else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if (log_transform) then "--logtransform" else ""} \
      ~{if defined(normalization) then ("--normalization " +  '"' + normalization + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(top_method) then ("--topmethod " +  '"' + top_method + '"') else ""} \
      ~{if (keep_duplicate_reads) then "-D" else ""} \
      ~{if (keep_reads_mapq) then "-R" else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gimmemotifs:0.15.3--py38hc37a69a_0"
  }
  parameter_meta {
    peaks: "BED file containing peaks"
    data_files_bam: "[FILE [FILE ...]], --datafile [FILE [FILE ...]]\\ndata files (BAM, BED or bigWig format)"
    window: "window size (default 200)"
    log_transform: "Log transfrom"
    normalization: "Normalization: none, quantile or scale"
    top: "Select regions."
    top_method: "Method to select regions (var, std, mean or random)"
    keep_duplicate_reads: "keep duplicate reads (removed by default)"
    keep_reads_mapq: "keep reads with mapq 0 (removed by default)"
    n_threads: "Number of threads"
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}