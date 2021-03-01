version 1.0

task FindHiCDomainspl {
  input {
    Int? or
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
    findHiCDomains_pl \
      ~{if defined(or) then ("-or- " +  '"' + or + '"') else ""} \
      ~{if (res) then "-res" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (max_dist) then "-maxDist" else ""} \
      ~{if (mind_ist) then "-minDist" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (std) then "-std" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if (min_index) then "-minIndex" else ""} \
      ~{if (mine_xp_index) then "-minExpIndex" else ""} \
      ~{if (min_delta) then "-minDelta" else ""} \
      ~{if (minlength) then "-minLength" else ""} \
      ~{if (max_error) then "-maxError" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    or: "<output prefix> <directionality index bedgraph> [options]\\n(Use the 2nd usage to change parameters for domain calls after running)"
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
  output {
    File out_stdout = stdout()
  }
}