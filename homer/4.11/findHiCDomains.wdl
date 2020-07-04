version 1.0

task FindHiCDomains.pl {
  input {
    Boolean? res
    Boolean? window
    Boolean? max_dist
    Boolean? mind_ist
    Boolean? log
    Boolean? std
    Boolean? min
    Boolean? cpu
    Boolean? min_index
    Boolean? mine_xp_index
    Boolean? min_delta
    Boolean? minlength
    Boolean? max_error
  }
  command <<<
    findHiCDomains.pl \
      ~{true="-res" false="" res} \
      ~{true="-window" false="" window} \
      ~{true="-maxDist" false="" max_dist} \
      ~{true="-minDist" false="" mind_ist} \
      ~{true="-log" false="" log} \
      ~{true="-std" false="" std} \
      ~{true="-min" false="" min} \
      ~{true="-cpu" false="" cpu} \
      ~{true="-minIndex" false="" min_index} \
      ~{true="-minExpIndex" false="" mine_xp_index} \
      ~{true="-minDelta" false="" min_delta} \
      ~{true="-minLength" false="" minlength} \
      ~{true="-maxError" false="" max_error}
  >>>
  parameter_meta {
    res: "<#> (resolution in bp, default: 5000)"
    window: "<#> (window resolution in bp, i.e. superRes, default: 25000)"
    max_dist: "<#> (max distance from loci to check direction index, default: 1000000)"
    mind_ist: "<#> (minimum distance from loci to check direction index, default: 0)"
    log: "(score direction index with log ratios, default: use linear ratios)"
    std: "<#> (exclude regions with sequencing depth exceeding # std deviations, default: 8)"
    min: "<#> (exclude regions with sequencing depth less than this fraction of mean, default: 0.05)"
    cpu: "<#> (number of CPUs to use, default: 1)"
    min_index: "<#> (minimum index score to be considered for boundary (as zscore), default: 0.5)"
    mine_xp_index: "<#> (minimum index score to be considered for boundary (as zscore), default: 1e-05)"
    min_delta: "<#> (minimum change in dir-index between boundaries (as zscore), default: 1)"
    minlength: "<#> (minimum domain length, default: 25000)"
    max_error: "<#> (maximum variation in directionality index within domain, default: 0.25)"
  }
}