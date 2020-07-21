class: CommandLineTool
id: ../../../SIMA.pl.cwl
inputs:
- id: domains_perform_analysis
  doc: (Domains to perform analysis on)
  type: string
  inputBinding:
    prefix: -d
- id: features_check_enrichment
  doc: '[peak file2] ... (features to check for enrichment)'
  type: string
  inputBinding:
    prefix: -p
- id: res
  doc: <#> (resolution, default=2500)
  type: boolean
  inputBinding:
    prefix: -res
- id: window
  doc: <#> (super resolution/window size, default=10000)
  type: boolean
  inputBinding:
    prefix: -window
- id: mind_ist
  doc: '<#> (minimum interaction read distance, default: 2x superRes)'
  type: boolean
  inputBinding:
    prefix: -minDist
- id: mind_size
  doc: '<#> (minimum domain size, default: 500000)'
  type: boolean
  inputBinding:
    prefix: -minDsize
- id: min
  doc: <#> (minimum distance between domains to test significance, default=-1)
  type: boolean
  inputBinding:
    prefix: -min
- id: max
  doc: <#> (maximum distance, set to -1 to allow inter-chr, default=1e9)
  type: boolean
  inputBinding:
    prefix: -max
- id: chr
  doc: '(only analyze this chromosome, default: all)'
  type: string
  inputBinding:
    prefix: -chr
- id: p_two
  doc: '[peak file2] ... (heterogenous peak enrichments)'
  type: string
  inputBinding:
    prefix: -p2
- id: avs_a
  doc: (All versus All, compare -p peaks against one another)
  type: boolean
  inputBinding:
    prefix: -AvsA
- id: number_randomizations_domain
  doc: '<#> (Number of randomizations per domain, default: 1000)'
  type: boolean
  inputBinding:
    prefix: -N
- id: r_depth
  doc: (adjust randomization based on HiC read depth)
  type: boolean
  inputBinding:
    prefix: -rdepth
- id: cpu
  doc: '<#> (number of CPUs to use for analysis, default: 1)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: merge
  doc: (merge results for all domains)
  type: boolean
  inputBinding:
    prefix: -merge
- id: stat
  doc: '(output stat for matrix mode, default: ratio)'
  type: string
  inputBinding:
    prefix: -stat
- id: p_value
  doc: '<#> (p-value cutoff to report the ratio, default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -pvalue
- id: min_peaks
  doc: '<#> (minimum number of peaks, default: none)'
  type: boolean
  inputBinding:
    prefix: -minPeaks
- id: d_name
  doc: (domain name to show)
  type: string
  inputBinding:
    prefix: -dname
- id: d_name_two
  doc: (domain name to show, if different)
  type: string
  inputBinding:
    prefix: -dname2
- id: hic_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- SIMA.pl
