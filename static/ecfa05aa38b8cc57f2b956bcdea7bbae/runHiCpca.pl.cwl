class: CommandLineTool
id: runHiCpca.pl.cwl
inputs:
- id: in_res
  doc: '<#> (resolution in bp, default: 50000)'
  type: boolean?
  inputBinding:
    prefix: -res
- id: in_window
  doc: '<#> (overlapping window resolution in bp, i.e. superRes, default: 100000)'
  type: boolean?
  inputBinding:
    prefix: -window
- id: in_active
  doc: <K4me+ regions> (Regions to use to help decide sign on principal component
    [active=+])
  type: boolean?
  inputBinding:
    prefix: -active
- id: in_inactive
  doc: (Regions to use to help decide sign on principal component [inactive=-])
  type: long?
  inputBinding:
    prefix: -inactive
- id: in_genome
  doc: (If you don't have seed regions, this will use the TSS file as active seeds)
  type: File?
  inputBinding:
    prefix: -genome
- id: in_corr_depth
  doc: '<#> (number of expected reads needed per data point when calculating correlation,
    default: 3)'
  type: boolean?
  inputBinding:
    prefix: -corrDepth
- id: in_std
  doc: '<#> (exclude regions with sequencing depth exceeding # std deviations, default:
    8)'
  type: boolean?
  inputBinding:
    prefix: -std
- id: in_min
  doc: '<#> (exclude regions with sequencing depth less than this fraction of mean,
    default: 0.05)'
  type: boolean?
  inputBinding:
    prefix: -min
- id: in_rpath
  doc: (If R is not accessible via the $PATH variable)
  type: File?
  inputBinding:
    prefix: -rpath
- id: in_pc
  doc: '<#> (number of principal components to report, default: 1)'
  type: boolean?
  inputBinding:
    prefix: -pc
- id: in_cpu
  doc: '<#> (number of CPUs to use, default: 1)'
  type: boolean?
  inputBinding:
    prefix: -cpu
- id: in_custom_regions
  doc: (instead of analysis by chr, separate by these regions, i.e. arms)
  type: File?
  inputBinding:
    prefix: -customRegions
- id: in_cluster
  doc: '<#> (cluster correlation matrix, define clusters using correlation threshold:
    i.e. 0.25)'
  type: boolean?
  inputBinding:
    prefix: -cluster
- id: in_min_p
  doc: '<#> (minimum cluster size, as fraction of chromosome, default: 0.02)'
  type: boolean?
  inputBinding:
    prefix: -minp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- runHiCpca.pl
