class: CommandLineTool
id: analyzeHiC.cwl
inputs:
- id: res
  doc: '<#> (Resolution of matrix in bp or use "-res site" [see below], default: 10000000)'
  type: boolean
  inputBinding:
    prefix: -res
- id: window
  doc: '<#> (size of region to count tags for overlapping windows, default: same as
    res)'
  type: boolean
  inputBinding:
    prefix: -window
- id: p
  doc: (specify regions to make matrix, unbalanced, use -p2 <peak file>)
  type: string
  inputBinding:
    prefix: -p
- id: vs_genome
  doc: (normally makes a square matrix, this will force 2nd set of peaks to be the
    genome)
  type: boolean
  inputBinding:
    prefix: -vsGenome
- id: chop_if_y
  doc: '(divide up peaks into regions the size of the resolution, default: use peak
    midpoints)'
  type: boolean
  inputBinding:
    prefix: -chopify
- id: relative
  doc: (use with -maxDist <#>, outputs diagonal of matrix up to maxDistance)
  type: boolean
  inputBinding:
    prefix: -relative
- id: pout
  doc: (output peaks used for analysis as a peak file, -pout2 <file> for 2nd set)
  type: File
  inputBinding:
    prefix: -pout
- id: ihs_kb
  doc: <#> (normalize counts to "interactions per hundred square kilobases per billion,
    default) Use '-normTotal <#>' and '-normArea <#>' to modify normalization constants,
    area in bp^2 Use '-normTotal given' and '-normArea given' to disable normalizations
  type: boolean
  inputBinding:
    prefix: -ihskb
- id: raw
  doc: (report raw interaction counts)
  type: boolean
  inputBinding:
    prefix: -raw
- id: coverage_norm
  doc: (Only adjust reads based on total interactions per region, default)
  type: boolean
  inputBinding:
    prefix: -coverageNorm
- id: balance
  doc: (balance resulting matrix - row/column totals the same)
  type: boolean
  inputBinding:
    prefix: -balance
- id: dist_norm
  doc: (return log2 obs/expected counts normalized for interaction distance)
  type: boolean
  inputBinding:
    prefix: -distNorm
- id: log
  doc: '| -nolog (force matrix to be linear or log2 transformed)'
  type: boolean
  inputBinding:
    prefix: -log
- id: corr
  doc: "(report Pearson's correlation coeff, use \"-corrIters <#>\" to recursively\
    \ calculate) -corrDepth <#> (merge regions in correlation so that minimum # expected\
    \ tags per data point)"
  type: boolean
  inputBinding:
    prefix: -corr
- id: dlr_distance
  doc: '<#> (Cutoff distance for distal vs. local interactions for DLR, default: 3Mb'
  type: boolean
  inputBinding:
    prefix: -dlrDistance
- id: ifc
  doc: (outputs interaction frequence curve for regions, can set to "auto")
  type: string
  inputBinding:
    prefix: -ifc
- id: cpu
  doc: '<#> (number of CPUs to use, default: 1)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: no_matrix
  doc: (skip matrix creation - use if more than 100,000 loci)
  type: boolean
  inputBinding:
    prefix: -nomatrix
- id: std
  doc: <#> (# of std deviations from mean interactions per region to exclude, default:8)
  type: boolean
  inputBinding:
    prefix: -std
- id: min
  doc: '<#> (minimum fraction of average read depth to include in analysis, default:
    0.05)'
  type: boolean
  inputBinding:
    prefix: -min
- id: min_expect
  doc: '<#> (minimum fraction of average read depth to use for coverage normalization,
    default: 0.75)'
  type: boolean
  inputBinding:
    prefix: -minExpect
- id: override
  doc: (Allow very large matrices to be created... be carful using this)
  type: boolean
  inputBinding:
    prefix: -override
- id: logp
  doc: (output log p-values from old-style interaction calculations)
  type: boolean
  inputBinding:
    prefix: -logp
- id: expected
  doc: (report expected interaction counts based on average profile)
  type: boolean
  inputBinding:
    prefix: -expected
- id: raw_and_expected
  doc: (raw counts sent to stdout)
  type: File
  inputBinding:
    prefix: -rawAndExpected
- id: cluster
  doc: '(cluster regions, uses "-o" to name cdt/gtr files, default: out.cdt)'
  type: boolean
  inputBinding:
    prefix: -cluster
- id: cluster_fixed
  doc: (clusters adjacent regions, good for linear domains)
  type: boolean
  inputBinding:
    prefix: -clusterFixed
- id: interactions
  doc: (output interactions, add "-center" to adjust pos to avg of reads)
  type: File
  inputBinding:
    prefix: -interactions
- id: p_value
  doc: <#> (p-value cutoff for interactions, default 0.001)
  type: boolean
  inputBinding:
    prefix: -pvalue
- id: zscore
  doc: <#> (z-score cutoff for interactions, default 1.0)
  type: boolean
  inputBinding:
    prefix: -zscore
- id: mind_ist
  doc: '<#> (Minimum interaction distance, default: resolution/2)'
  type: boolean
  inputBinding:
    prefix: -minDist
- id: max_dist
  doc: '<#> (Maximum interaction distance, default: -1=none)'
  type: boolean
  inputBinding:
    prefix: -maxDist
- id: boundary
  doc: <#> (score boundaries at the given scale i.e. 100000)
  type: boolean
  inputBinding:
    prefix: -boundary
- id: washu
  doc: (Both matrix and interaction outputs will be in WashH BED format)
  type: boolean
  inputBinding:
    prefix: -washu
- id: circo_s
  doc: (creates circos files with the given prefix)
  type: File
  inputBinding:
    prefix: -circos
- id: d
  doc: '[tag directory 2] ... (will plot tag densities with circos)'
  type: string
  inputBinding:
    prefix: -d
- id: b
  doc: <peak/BED file> (similar to visiualization of genes/-g, but no labels)
  type: boolean
  inputBinding:
    prefix: -b
- id: g
  doc: (shows gene locations)
  type: string
  inputBinding:
    prefix: -g
- id: hist
  doc: '<#> (create a histogram matrix around peak positions, # is the resolution)'
  type: boolean
  inputBinding:
    prefix: -hist
- id: size
  doc: <#> (size of region in histogram, default = 100 * resolution)
  type: boolean
  inputBinding:
    prefix: -size
- id: i
  doc: (for analyzing specific sets of interactions)
  type: long
  inputBinding:
    prefix: -i
- id: i_raw
  doc: (output raw reads from interactions, or -irawtags <file>)
  type: string
  inputBinding:
    prefix: -iraw
outputs: []
cwlVersion: v1.1
baseCommand:
- analyzeHiC
