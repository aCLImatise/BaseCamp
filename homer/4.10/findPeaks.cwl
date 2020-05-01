#!/usr/bin/env cwl-runner

baseCommand:
- findPeaks
class: CommandLineTool
cwlVersion: v1.0
id: findpeaks
inputs:
- doc: (Experiment to use as IgG/Input/Control)
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: '<#> (Peak size, default: auto)'
  id: size
  inputBinding:
    prefix: -size
  type: boolean
- doc: '<#> (minimum distance between peaks, default: peak size x2)'
  id: mind_ist
  inputBinding:
    prefix: -minDist
  type: boolean
- doc: '<#> (Set effective mappable genome size, default: 2e9)'
  id: g_size
  inputBinding:
    prefix: -gsize
  type: boolean
- doc: '<#|auto> (Approximate fragment length, default: auto)'
  id: frag_length
  inputBinding:
    prefix: -fragLength
  type: boolean
- doc: '<#|auto> (Approximate fragment length of input tags, default: auto)'
  id: input_frag_length
  inputBinding:
    prefix: -inputFragLength
  type: boolean
- doc: '<#> (Maximum tags per bp to count, 0 = no limit, default: auto)'
  id: tbp
  inputBinding:
    prefix: -tbp
  type: boolean
- doc: '<#> (Maximum tags per bp to count in input, 0 = no limit, default: auto)'
  id: input_tbp
  inputBinding:
    prefix: -inputtbp
  type: boolean
- doc: <both|separate> (find peaks using tags on both strands or separate, default:both)
  id: strand
  inputBinding:
    prefix: -strand
  type: boolean
- doc: '# (Tag count to normalize to, default 10000000)'
  id: norm
  inputBinding:
    prefix: -norm
  type: boolean
- doc: "(extends start/stop coordinates to cover full region considered \"enriched\"\
    ) -regionRes <#> (number of fractions peaks are divided in when extending 'regions',\
    \ def: 4)"
  id: region
  inputBinding:
    prefix: -region
  type: boolean
- doc: (Centers peaks on maximum tag overlap and calculates focus ratios)
  id: center
  inputBinding:
    prefix: -center
  type: boolean
- doc: (Centers peaks on most likely nucleosome free region [works best with mnase
    data]) (-center and -nfr can be performed later with "getPeakTags"
  id: nfr
  inputBinding:
    prefix: -nfr
  type: boolean
- doc: '<#> (fold enrichment over input tag count, default: 4.0)'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: '<#> (poisson p-value threshold relative to input tag count, default: 0.0001)'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: '<#> (fold enrichment over local tag count, default: 4.0)'
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: '<#> (poisson p-value threshold relative to local tag count, default: 0.0001)'
  id: lp
  inputBinding:
    prefix: -LP
  type: boolean
- doc: '<#> (fold enrichment limit of expected unique tag positions, default: 2.0)'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: '<#> (region to check for local tag enrichment, default: 10000)'
  id: local_size
  inputBinding:
    prefix: -localSize
  type: boolean
- doc: '<#> (Size of region to search for control tags, default: 2x peak size)'
  id: input_size
  inputBinding:
    prefix: -inputSize
  type: boolean
- doc: <#> (False discovery rate, default = 0.001)
  id: fdr
  inputBinding:
    prefix: -fdr
  type: boolean
- doc: '<#> (Set poisson p-value cutoff, default: uses fdr)'
  id: poisson
  inputBinding:
    prefix: -poisson
  type: boolean
- doc: '<#> (Set # of tags to define a peak, default: 25)'
  id: tag_threshold
  inputBinding:
    prefix: -tagThreshold
  type: boolean
- doc: '<#> (Set # of normalized tags to define a peak, by default uses 1e7 for norm)'
  id: n_tag_threshold
  inputBinding:
    prefix: -ntagThreshold
  type: boolean
- doc: '<#> (Absolute minimum tags per peak, default: expected tags per peak)'
  id: min_tag_threshold
  inputBinding:
    prefix: -minTagThreshold
  type: boolean
- doc: '<#> (Slope threshold to identify super vs. typical enh., default: 1.00)'
  id: super_slope
  inputBinding:
    prefix: -superSlope
  type: boolean
- doc: '<#> (moving window/number of peaks to use to calculate slope, default: 10)'
  id: super_window
  inputBinding:
    prefix: -superWindow
  type: boolean
- doc: '(Output typical enhancers to this file, default: not used)'
  id: typical
  inputBinding:
    prefix: -typical
  type: File
- doc: (initial peaks to use for super enhancer merging/scoring)
  id: input_peaks
  inputBinding:
    prefix: -inputPeaks
  type: File
- doc: (regions to exclude from analysis, i.e. TSS regions for H3K27ac)
  id: exclude_peaks
  inputBinding:
    prefix: -excludePeaks
  type: File
- doc: '/ -methylC (find unmethylated/methylated regions, default: -unmethyC)'
  id: un_methyl_c
  inputBinding:
    prefix: -unmethylC
  type: boolean
- doc: '<#> (methylation threshold of regions, default: avg methylation/2)'
  id: mc_thresh
  inputBinding:
    prefix: -mCthresh
  type: boolean
- doc: '<#> (Minimum number of cytosines per methylation peak, default: 6)'
  id: minn_umc
  inputBinding:
    prefix: -minNumC
  type: boolean
