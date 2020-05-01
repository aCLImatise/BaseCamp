#!/usr/bin/env cwl-runner

baseCommand:
- analyzeHiC
class: CommandLineTool
cwlVersion: v1.0
id: analyzehic
inputs:
- doc: '<#> (Resolution of matrix in bp or use "-res site" [see below], default: 10000000)'
  id: res
  inputBinding:
    prefix: -res
  type: boolean
- doc: '<#> (size of region to count tags for overlapping windows, default: same as
    res)'
  id: window
  inputBinding:
    prefix: -window
  type: boolean
- doc: (specify regions to make matrix, unbalanced, use -p2 <peak file>)
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: (normally makes a square matrix, this will force 2nd set of peaks to be the
    genome)
  id: vs_genome
  inputBinding:
    prefix: -vsGenome
  type: boolean
- doc: '(divide up peaks into regions the size of the resolution, default: use peak
    midpoints)'
  id: chop_if_y
  inputBinding:
    prefix: -chopify
  type: boolean
- doc: (use with -maxDist <#>, outputs diagonal of matrix up to maxDistance)
  id: relative
  inputBinding:
    prefix: -relative
  type: boolean
- doc: (output peaks used for analysis as a peak file, -pout2 <file> for 2nd set)
  id: pout
  inputBinding:
    prefix: -pout
  type: File
- doc: <#> (normalize counts to "interactions per hundred square kilobases per billion,
    default) Use '-normTotal <#>' and '-normArea <#>' to modify normalization constants,
    area in bp^2 Use '-normTotal given' and '-normArea given' to disable normalizations
  id: ihs_kb
  inputBinding:
    prefix: -ihskb
  type: boolean
- doc: (report raw interaction counts)
  id: raw
  inputBinding:
    prefix: -raw
  type: boolean
- doc: (Only adjust reads based on total interactions per region, default)
  id: coverage_norm
  inputBinding:
    prefix: -coverageNorm
  type: boolean
- doc: (balance resulting matrix - row/column totals the same)
  id: balance
  inputBinding:
    prefix: -balance
  type: boolean
- doc: (return log2 obs/expected counts normalized for interaction distance)
  id: dist_norm
  inputBinding:
    prefix: -distNorm
  type: boolean
- doc: '| -nolog (force matrix to be linear or log2 transformed)'
  id: log
  inputBinding:
    prefix: -log
  type: boolean
- doc: "(report Pearson's correlation coeff, use \"-corrIters <#>\" to recursively\
    \ calculate) -corrDepth <#> (merge regions in correlation so that minimum # expected\
    \ tags per data point)"
  id: corr
  inputBinding:
    prefix: -corr
  type: boolean
- doc: '<#> (Cutoff distance for distal vs. local interactions for DLR, default: 3Mb'
  id: dlr_distance
  inputBinding:
    prefix: -dlrDistance
  type: boolean
- doc: (outputs interaction frequence curve for regions, can set to "auto")
  id: ifc
  inputBinding:
    prefix: -ifc
  type: string
- doc: '<#> (number of CPUs to use, default: 1)'
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: (skip matrix creation - use if more than 100,000 loci)
  id: no_matrix
  inputBinding:
    prefix: -nomatrix
  type: boolean
- doc: <#> (# of std deviations from mean interactions per region to exclude, default:8)
  id: std
  inputBinding:
    prefix: -std
  type: boolean
- doc: '<#> (minimum fraction of average read depth to include in analysis, default:
    0.05)'
  id: min
  inputBinding:
    prefix: -min
  type: boolean
- doc: '<#> (minimum fraction of average read depth to use for coverage normalization,
    default: 0.75)'
  id: min_expect
  inputBinding:
    prefix: -minExpect
  type: boolean
- doc: (Allow very large matrices to be created... be carful using this)
  id: override
  inputBinding:
    prefix: -override
  type: boolean
- doc: (output log p-values from old-style interaction calculations)
  id: logp
  inputBinding:
    prefix: -logp
  type: boolean
- doc: (report expected interaction counts based on average profile)
  id: expected
  inputBinding:
    prefix: -expected
  type: boolean
- doc: (raw counts sent to stdout)
  id: raw_and_expected
  inputBinding:
    prefix: -rawAndExpected
  type: File
- doc: '(cluster regions, uses "-o" to name cdt/gtr files, default: out.cdt)'
  id: cluster
  inputBinding:
    prefix: -cluster
  type: boolean
- doc: (clusters adjacent regions, good for linear domains)
  id: cluster_fixed
  inputBinding:
    prefix: -clusterFixed
  type: boolean
- doc: (output interactions, add "-center" to adjust pos to avg of reads)
  id: interactions
  inputBinding:
    prefix: -interactions
  type: File
- doc: <#> (p-value cutoff for interactions, default 0.001)
  id: p_value
  inputBinding:
    prefix: -pvalue
  type: boolean
- doc: <#> (z-score cutoff for interactions, default 1.0)
  id: zscore
  inputBinding:
    prefix: -zscore
  type: boolean
- doc: '<#> (Minimum interaction distance, default: resolution/2)'
  id: mind_ist
  inputBinding:
    prefix: -minDist
  type: boolean
- doc: '<#> (Maximum interaction distance, default: -1=none)'
  id: max_dist
  inputBinding:
    prefix: -maxDist
  type: boolean
- doc: <#> (score boundaries at the given scale i.e. 100000)
  id: boundary
  inputBinding:
    prefix: -boundary
  type: boolean
- doc: (Both matrix and interaction outputs will be in WashH BED format)
  id: washu
  inputBinding:
    prefix: -washu
  type: boolean
- doc: (creates circos files with the given prefix)
  id: circo_s
  inputBinding:
    prefix: -circos
  type: File
- doc: '[tag directory 2] ... (will plot tag densities with circos)'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: <peak/BED file> (similar to visiualization of genes/-g, but no labels)
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: (shows gene locations)
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: '<#> (create a histogram matrix around peak positions, # is the resolution)'
  id: hist
  inputBinding:
    prefix: -hist
  type: boolean
- doc: <#> (size of region in histogram, default = 100 * resolution)
  id: size
  inputBinding:
    prefix: -size
  type: boolean
- doc: (for analyzing specific sets of interactions)
  id: i
  inputBinding:
    prefix: -i
  type: long
- doc: (output raw reads from interactions, or -irawtags <file>)
  id: i_raw
  inputBinding:
    prefix: -iraw
  type: string
