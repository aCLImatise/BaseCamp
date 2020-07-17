version 1.0

task Speedtest.py {
  input {
    String? n_features
    String? chunksize
    String? start
    String? stop
    String? chrom
    String? type
    String? prefix
    String? plot_prefix
    String? bins
    String this
    String is
    String a
    String benchmarking
    String script
    String for
    String the
    String meta_seq
    String python
    String package
  }
  command <<<
    speedtest.py \
      ~{this} \
      ~{is} \
      ~{a} \
      ~{benchmarking} \
      ~{script} \
      ~{for} \
      ~{the} \
      ~{meta_seq} \
      ~{python} \
      ~{package} \
      ~{if defined(n_features) then ("--nfeatures " +  '"' + n_features + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(plot_prefix) then ("--plot-prefix " +  '"' + plot_prefix + '"') else ""} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""}
  >>>
  parameter_meta {
    n_features: "Number of random windows to make. The size of each feature is (start - stop) / nfeatures, so changing this parameter will affect the size of each feature."
    chunksize: "Number of windows to send to each process"
    start: "start coord of possible windows. See --nfeatures help regarding size."
    stop: "stop coord of possible windows. See --nfeatures help regarding size."
    chrom: "chromsome to make windows on"
    type: "Only use the specified file types. Either \"all\" (default) or a comma-separated list of [bam, bigwig, bed, bigbed]."
    prefix: "Prefix of filenames to use. Expects files with this prefix, and the following suffixes: .bam, .bigwig, .bed.gz (should already be tabixed), .bigbed. Default: /tmp/tmpot432_h7/lib/python2.7/site- packages/metaseq/test/data/x"
    plot_prefix: "Filename used to save the resulting plot. Default is ./speedtest"
    bins: "Number of bins for each feature"
    this: ""
    is: ""
    a: ""
    benchmarking: ""
    script: ""
    for: ""
    the: ""
    meta_seq: ""
    python: ""
    package: ""
  }
}