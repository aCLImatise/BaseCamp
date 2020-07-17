version 1.0

task GetHiCcorrDiff.pl {
  input {
    Boolean? res
    Boolean? window
    Boolean? corr_depth
    Boolean? std
    Boolean? min
    Boolean? max_dist
    Boolean? cpu
  }
  command <<<
    getHiCcorrDiff.pl \
      ~{true="-res" false="" res} \
      ~{true="-window" false="" window} \
      ~{true="-corrDepth" false="" corr_depth} \
      ~{true="-std" false="" std} \
      ~{true="-min" false="" min} \
      ~{true="-maxDist" false="" max_dist} \
      ~{true="-cpu" false="" cpu}
  >>>
  parameter_meta {
    res: "<#> (resolution in bp, default: 50000)"
    window: "<#> (window resolution in bp, i.e. window size, default: 100000)"
    corr_depth: "<#> (number of expected reads needed per data point when calculating correlation, default: 3)"
    std: "<#> (exclude regions with sequencing depth exceeding # std deviations, default: 8)"
    min: "<#> (exclude regions with sequencing depth less than this fraction of mean, default: 0.05)"
    max_dist: "<#> (maximum distance around regions to calculate similarity metrics, default: none)"
    cpu: "<#> (number of CPUs to use, default: 1)"
  }
}