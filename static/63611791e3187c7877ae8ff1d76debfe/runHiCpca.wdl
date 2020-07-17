version 1.0

task RunHiCpca.pl {
  input {
    Boolean? res
    Boolean? window
    Boolean? active
    String? inactive
    String? genome
    Boolean? corr_depth
    Boolean? std
    Boolean? min
    File? rpath
    Boolean? pc
    Boolean? cpu
    String? custom_regions
    Boolean? cluster
    Boolean? min_p
  }
  command <<<
    runHiCpca.pl \
      ~{true="-res" false="" res} \
      ~{true="-window" false="" window} \
      ~{true="-active" false="" active} \
      ~{if defined(inactive) then ("-inactive " +  '"' + inactive + '"') else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{true="-corrDepth" false="" corr_depth} \
      ~{true="-std" false="" std} \
      ~{true="-min" false="" min} \
      ~{if defined(rpath) then ("-rpath " +  '"' + rpath + '"') else ""} \
      ~{true="-pc" false="" pc} \
      ~{true="-cpu" false="" cpu} \
      ~{if defined(custom_regions) then ("-customRegions " +  '"' + custom_regions + '"') else ""} \
      ~{true="-cluster" false="" cluster} \
      ~{true="-minp" false="" min_p}
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
}