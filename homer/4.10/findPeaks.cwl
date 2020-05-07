class: CommandLineTool
id: findPeaks.cwl
inputs:
- id: i
  doc: (Experiment to use as IgG/Input/Control)
  type: string
  inputBinding:
    prefix: -i
- id: size
  doc: '<#> (Peak size, default: auto)'
  type: boolean
  inputBinding:
    prefix: -size
- id: mind_ist
  doc: '<#> (minimum distance between peaks, default: peak size x2)'
  type: boolean
  inputBinding:
    prefix: -minDist
- id: g_size
  doc: '<#> (Set effective mappable genome size, default: 2e9)'
  type: boolean
  inputBinding:
    prefix: -gsize
- id: frag_length
  doc: '<#|auto> (Approximate fragment length, default: auto)'
  type: boolean
  inputBinding:
    prefix: -fragLength
- id: input_frag_length
  doc: '<#|auto> (Approximate fragment length of input tags, default: auto)'
  type: boolean
  inputBinding:
    prefix: -inputFragLength
- id: tbp
  doc: '<#> (Maximum tags per bp to count, 0 = no limit, default: auto)'
  type: boolean
  inputBinding:
    prefix: -tbp
- id: input_tbp
  doc: '<#> (Maximum tags per bp to count in input, 0 = no limit, default: auto)'
  type: boolean
  inputBinding:
    prefix: -inputtbp
- id: strand
  doc: <both|separate> (find peaks using tags on both strands or separate, default:both)
  type: boolean
  inputBinding:
    prefix: -strand
- id: norm
  doc: '# (Tag count to normalize to, default 10000000)'
  type: boolean
  inputBinding:
    prefix: -norm
- id: region
  doc: "(extends start/stop coordinates to cover full region considered \"enriched\"\
    ) -regionRes <#> (number of fractions peaks are divided in when extending 'regions',\
    \ def: 4)"
  type: boolean
  inputBinding:
    prefix: -region
- id: center
  doc: (Centers peaks on maximum tag overlap and calculates focus ratios)
  type: boolean
  inputBinding:
    prefix: -center
- id: nfr
  doc: (Centers peaks on most likely nucleosome free region [works best with mnase
    data]) (-center and -nfr can be performed later with "getPeakTags"
  type: boolean
  inputBinding:
    prefix: -nfr
- id: f
  doc: '<#> (fold enrichment over input tag count, default: 4.0)'
  type: boolean
  inputBinding:
    prefix: -F
- id: p
  doc: '<#> (poisson p-value threshold relative to input tag count, default: 0.0001)'
  type: boolean
  inputBinding:
    prefix: -P
- id: l
  doc: '<#> (fold enrichment over local tag count, default: 4.0)'
  type: boolean
  inputBinding:
    prefix: -L
- id: lp
  doc: '<#> (poisson p-value threshold relative to local tag count, default: 0.0001)'
  type: boolean
  inputBinding:
    prefix: -LP
- id: c
  doc: '<#> (fold enrichment limit of expected unique tag positions, default: 2.0)'
  type: boolean
  inputBinding:
    prefix: -C
- id: local_size
  doc: '<#> (region to check for local tag enrichment, default: 10000)'
  type: boolean
  inputBinding:
    prefix: -localSize
- id: input_size
  doc: '<#> (Size of region to search for control tags, default: 2x peak size)'
  type: boolean
  inputBinding:
    prefix: -inputSize
- id: fdr
  doc: <#> (False discovery rate, default = 0.001)
  type: boolean
  inputBinding:
    prefix: -fdr
- id: poisson
  doc: '<#> (Set poisson p-value cutoff, default: uses fdr)'
  type: boolean
  inputBinding:
    prefix: -poisson
- id: tag_threshold
  doc: '<#> (Set # of tags to define a peak, default: 25)'
  type: boolean
  inputBinding:
    prefix: -tagThreshold
- id: n_tag_threshold
  doc: '<#> (Set # of normalized tags to define a peak, by default uses 1e7 for norm)'
  type: boolean
  inputBinding:
    prefix: -ntagThreshold
- id: min_tag_threshold
  doc: '<#> (Absolute minimum tags per peak, default: expected tags per peak)'
  type: boolean
  inputBinding:
    prefix: -minTagThreshold
- id: super_slope
  doc: '<#> (Slope threshold to identify super vs. typical enh., default: 1.00)'
  type: boolean
  inputBinding:
    prefix: -superSlope
- id: super_window
  doc: '<#> (moving window/number of peaks to use to calculate slope, default: 10)'
  type: boolean
  inputBinding:
    prefix: -superWindow
- id: typical
  doc: '(Output typical enhancers to this file, default: not used)'
  type: File
  inputBinding:
    prefix: -typical
- id: input_peaks
  doc: (initial peaks to use for super enhancer merging/scoring)
  type: File
  inputBinding:
    prefix: -inputPeaks
- id: exclude_peaks
  doc: (regions to exclude from analysis, i.e. TSS regions for H3K27ac)
  type: File
  inputBinding:
    prefix: -excludePeaks
- id: un_methyl_c
  doc: '/ -methylC (find unmethylated/methylated regions, default: -unmethyC)'
  type: boolean
  inputBinding:
    prefix: -unmethylC
- id: mc_thresh
  doc: '<#> (methylation threshold of regions, default: avg methylation/2)'
  type: boolean
  inputBinding:
    prefix: -mCthresh
- id: minn_umc
  doc: '<#> (Minimum number of cytosines per methylation peak, default: 6)'
  type: boolean
  inputBinding:
    prefix: -minNumC
outputs: []
cwlVersion: v1.1
baseCommand:
- findPeaks
