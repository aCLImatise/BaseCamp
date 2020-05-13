class: CommandLineTool
id: runHiCpca.pl.cwl
inputs:
- id: res
  doc: '<#> (resolution in bp, default: 50000)'
  type: boolean
  inputBinding:
    prefix: -res
- id: window
  doc: '<#> (overlapping window resolution in bp, i.e. superRes, default: 100000)'
  type: boolean
  inputBinding:
    prefix: -window
- id: active
  doc: <K4me+ regions> (Regions to use to help decide sign on principal component
    [active=+])
  type: boolean
  inputBinding:
    prefix: -active
- id: inactive
  doc: (Regions to use to help decide sign on principal component [inactive=-])
  type: string
  inputBinding:
    prefix: -inactive
- id: genome
  doc: (If you don't have seed regions, this will use the TSS file as active seeds)
  type: string
  inputBinding:
    prefix: -genome
- id: corr_depth
  doc: '<#> (number of expected reads needed per data point when calculating correlation,
    default: 3)'
  type: boolean
  inputBinding:
    prefix: -corrDepth
- id: std
  doc: '<#> (exclude regions with sequencing depth exceeding # std deviations, default:
    8)'
  type: boolean
  inputBinding:
    prefix: -std
- id: min
  doc: '<#> (exclude regions with sequencing depth less than this fraction of mean,
    default: 0.05)'
  type: boolean
  inputBinding:
    prefix: -min
- id: rpath
  doc: (If R is not accessible via the $PATH variable)
  type: File
  inputBinding:
    prefix: -rpath
- id: pc
  doc: '<#> (number of principal components to report, default: 1)'
  type: boolean
  inputBinding:
    prefix: -pc
- id: cpu
  doc: '<#> (number of CPUs to use, default: 1)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: custom_regions
  doc: <regions peak/BED file> (instead of analysis by chr, separate by these regions,
    i.e. arms)
  type: boolean
  inputBinding:
    prefix: -customRegions
- id: cluster
  doc: '<#> (cluster correlation matrix, define clusters using correlation threshold:
    i.e. 0.25)'
  type: boolean
  inputBinding:
    prefix: -cluster
- id: min_p
  doc: '<#> (minimum cluster size, as fraction of chromosome, default: 0.02)'
  type: boolean
  inputBinding:
    prefix: -minp
outputs: []
cwlVersion: v1.1
baseCommand:
- runHiCpca.pl
