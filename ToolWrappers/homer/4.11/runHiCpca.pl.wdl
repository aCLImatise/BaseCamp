version 1.0

task RunHiCpcapl {
  input {
    Boolean? res
    Boolean? window
    Boolean? active
    Int? inactive
    File? genome
    Boolean? corr_depth
    Boolean? std
    Boolean? min
    File? rpath
    Boolean? pc
    Boolean? cpu
    File? custom_regions
    Boolean? cluster
    Boolean? min_p
  }
  command <<<
    runHiCpca_pl \
      ~{if (res) then "-res" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (active) then "-active" else ""} \
      ~{if defined(inactive) then ("-inactive " +  '"' + inactive + '"') else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if (corr_depth) then "-corrDepth" else ""} \
      ~{if (std) then "-std" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if defined(rpath) then ("-rpath " +  '"' + rpath + '"') else ""} \
      ~{if (pc) then "-pc" else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if defined(custom_regions) then ("-customRegions " +  '"' + custom_regions + '"') else ""} \
      ~{if (cluster) then "-cluster" else ""} \
      ~{if (min_p) then "-minp" else ""}
  >>>
  parameter_meta {
    res: "<#> (resolution in bp, default: 50000)"
    window: "<#> (overlapping window resolution in bp, i.e. superRes, default: 100000)"
    active: "<K4me+ regions> (Regions to use to help decide sign on principal component [active=+])"
    inactive: "(Regions to use to help decide sign on principal component [inactive=-])"
    genome: "(If you don't have seed regions, this will use the TSS file as active seeds)"
    corr_depth: "<#> (number of expected reads needed per data point when calculating correlation, default: 3)"
    std: "<#> (exclude regions with sequencing depth exceeding # std deviations, default: 8)"
    min: "<#> (exclude regions with sequencing depth less than this fraction of mean, default: 0.05)"
    rpath: "(If R is not accessible via the $PATH variable)"
    pc: "<#> (number of principal components to report, default: 1)"
    cpu: "<#> (number of CPUs to use, default: 1)"
    custom_regions: "(instead of analysis by chr, separate by these regions, i.e. arms)"
    cluster: "<#> (cluster correlation matrix, define clusters using correlation threshold: i.e. 0.25)"
    min_p: "<#> (minimum cluster size, as fraction of chromosome, default: 0.02)"
  }
  output {
    File out_stdout = stdout()
  }
}