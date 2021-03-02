version 1.0

task FindHiCInteractionsByChrplAnalyzeHiC {
  input {
    Boolean? res
    Boolean? window
    Boolean? mind_ist
    Boolean? max_dist
    Boolean? p_value
    Boolean? zscore
    Boolean? cpu
    Directory? ped
    Boolean? std
    Boolean? min
  }
  command <<<
    findHiCInteractionsByChr_pl analyzeHiC \
      ~{if (res) then "-res" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (mind_ist) then "-minDist" else ""} \
      ~{if (max_dist) then "-maxDist" else ""} \
      ~{if (p_value) then "-pvalue" else ""} \
      ~{if (zscore) then "-zscore" else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if defined(ped) then ("-ped " +  '"' + ped + '"') else ""} \
      ~{if (std) then "-std" else ""} \
      ~{if (min) then "-min" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    res: "<#> (resolution in bp, default: 2000)"
    window: "<#> (window resolution in bp, i.e. superRes, default: 10000)"
    mind_ist: "<#> (minimum interaction distance to search, default: superRes distance)"
    max_dist: "<#> (minimum interaction distance to search, default: 10000000)"
    p_value: "<#> (pvalue cutoff, default: 0.01)"
    zscore: "<#> (z-score cutoff, default: 1.5)"
    cpu: "<#> (number of CPUs to use, default: 1)"
    ped: "(Background HiC directory)"
    std: "<#> (exclude regions with sequencing depth exceeding # std deviations, default: 4)"
    min: "<#> (exclude regions with sequencing depth less than this fraction of mean, default: 0.2)"
  }
  output {
    File out_stdout = stdout()
  }
}