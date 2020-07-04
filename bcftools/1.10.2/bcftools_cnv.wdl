version 1.0

task BcftoolsCnv {
  input {
    Float? plot_threshold
    String? regions
    File? regions_file
    String? query_sample
    String? targets
    File? targets_file
    Boolean? aberrant
    Float? baf_weight
    Boolean? baf_dev
    Float? err_prob
    Boolean? lrr_dev
    Float? lrr_weight
    Int? lrr_smooth_win
    Float? optimize
    Float? same_prob
    Float? xy_prob
    File file_dot_vcf
  }
  command <<<
    bcftools cnv \
      ~{file_dot_vcf} \
      ~{if defined(plot_threshold) then ("--plot-threshold " +  '"' + plot_threshold + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(query_sample) then ("--query-sample " +  '"' + query_sample + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{true="--aberrant" false="" aberrant} \
      ~{if defined(baf_weight) then ("--BAF-weight " +  '"' + baf_weight + '"') else ""} \
      ~{true="--BAF-dev" false="" baf_dev} \
      ~{if defined(err_prob) then ("--err-prob " +  '"' + err_prob + '"') else ""} \
      ~{true="--LRR-dev" false="" lrr_dev} \
      ~{if defined(lrr_weight) then ("--LRR-weight " +  '"' + lrr_weight + '"') else ""} \
      ~{if defined(lrr_smooth_win) then ("--LRR-smooth-win " +  '"' + lrr_smooth_win + '"') else ""} \
      ~{if defined(optimize) then ("--optimize " +  '"' + optimize + '"') else ""} \
      ~{if defined(same_prob) then ("--same-prob " +  '"' + same_prob + '"') else ""} \
      ~{if defined(xy_prob) then ("--xy-prob " +  '"' + xy_prob + '"') else ""}
  >>>
  parameter_meta {
    plot_threshold: "plot aberrant chromosomes with quality at least 'float'"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    query_sample: "query samply name"
    targets: "similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    aberrant: "<float[,float]>     fraction of aberrant cells in query and control [1.0,1.0]"
    baf_weight: "relative contribution from BAF [1]"
    baf_dev: "<float[,float]>      expected BAF deviation in query and control [0.04,0.04]"
    err_prob: "uniform error probability [1e-4]"
    lrr_dev: "<float[,float]>      expected LRR deviation [0.2,0.2]"
    lrr_weight: "relative contribution from LRR [0.2]"
    lrr_smooth_win: "window of LRR moving average smoothing [10]"
    optimize: "estimate fraction of aberrant cells down to <float> [1.0]"
    same_prob: "prior probability of -s/-c being the same [0.5]"
    xy_prob: "P(x|y) transition probability [1e-9]"
    file_dot_vcf: ""
  }
}