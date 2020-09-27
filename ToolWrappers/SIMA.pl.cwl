class: CommandLineTool
id: SIMA.pl.cwl
inputs:
- id: in_domains_perform_analysis
  doc: (Domains to perform analysis on)
  type: File
  inputBinding:
    prefix: -d
- id: in_features_check_enrichment
  doc: '[peak file2] ... (features to check for enrichment)'
  type: long
  inputBinding:
    prefix: -p
- id: in_res
  doc: <#> (resolution, default=2500)
  type: boolean
  inputBinding:
    prefix: -res
- id: in_window
  doc: <#> (super resolution/window size, default=10000)
  type: boolean
  inputBinding:
    prefix: -window
- id: in_mind_ist
  doc: '<#> (minimum interaction read distance, default: 2x superRes)'
  type: boolean
  inputBinding:
    prefix: -minDist
- id: in_mind_size
  doc: '<#> (minimum domain size, default: 500000)'
  type: boolean
  inputBinding:
    prefix: -minDsize
- id: in_min
  doc: <#> (minimum distance between domains to test significance, default=-1)
  type: boolean
  inputBinding:
    prefix: -min
- id: in_max
  doc: <#> (maximum distance, set to -1 to allow inter-chr, default=1e9)
  type: boolean
  inputBinding:
    prefix: -max
- id: in_chr
  doc: '(only analyze this chromosome, default: all)'
  type: string
  inputBinding:
    prefix: -chr
- id: in_p_two
  doc: '[peak file2] ... (heterogenous peak enrichments)'
  type: long
  inputBinding:
    prefix: -p2
- id: in_avs_a
  doc: (All versus All, compare -p peaks against one another)
  type: boolean
  inputBinding:
    prefix: -AvsA
- id: in_number_randomizations_domain
  doc: '<#> (Number of randomizations per domain, default: 1000)'
  type: boolean
  inputBinding:
    prefix: -N
- id: in_r_depth
  doc: (adjust randomization based on HiC read depth)
  type: boolean
  inputBinding:
    prefix: -rdepth
- id: in_cpu
  doc: '<#> (number of CPUs to use for analysis, default: 1)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_merge
  doc: (merge results for all domains)
  type: boolean
  inputBinding:
    prefix: -merge
- id: in_stat
  doc: '(output stat for matrix mode, default: ratio)'
  type: string
  inputBinding:
    prefix: -stat
- id: in_p_value
  doc: '<#> (p-value cutoff to report the ratio, default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -pvalue
- id: in_min_peaks
  doc: '<#> (minimum number of peaks, default: none)'
  type: boolean
  inputBinding:
    prefix: -minPeaks
- id: in_d_name
  doc: (domain name to show)
  type: string
  inputBinding:
    prefix: -dname
- id: in_d_name_two
  doc: (domain name to show, if different)
  type: long
  inputBinding:
    prefix: -dname2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SIMA.pl
