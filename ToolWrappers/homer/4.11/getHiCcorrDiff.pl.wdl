version 1.0

task GetHiCcorrDiffpl {
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
    getHiCcorrDiff_pl \
      ~{if (res) then "-res" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (corr_depth) then "-corrDepth" else ""} \
      ~{if (std) then "-std" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (max_dist) then "-maxDist" else ""} \
      ~{if (cpu) then "-cpu" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    res: "<#> (resolution in bp, default: 50000)"
    window: "<#> (window resolution in bp, i.e. window size, default: 100000)"
    corr_depth: "<#> (number of expected reads needed per data point when calculating correlation, default: 3)"
    std: "<#> (exclude regions with sequencing depth exceeding # std deviations, default: 8)"
    min: "<#> (exclude regions with sequencing depth less than this fraction of mean, default: 0.05)"
    max_dist: "<#> (maximum distance around regions to calculate similarity metrics, default: none)"
    cpu: "<#> (number of CPUs to use, default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}