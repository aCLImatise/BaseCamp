class: CommandLineTool
id: findPeaks.cwl
inputs:
- id: in_file_name_output
  doc: "(file name for to output peaks, default: stdout)\n\"-o auto\" will send output\
    \ to \"<tag directory>/peaks.txt\", \".../regions.txt\",\nor \".../transcripts.txt\"\
    \ depending on the \"-style\" option"
  type: File?
  inputBinding:
    prefix: -o
- id: in_style
  doc: "(Specialized options for specific analysis strategies)\nfactor (transcription\
    \ factor ChIP-Seq, uses -center, output: peaks.txt,  default)\nhistone (histone\
    \ modification ChIP-Seq, region based, uses -region -size 500 -L 0, regions.txt)\n\
    groseq (de novo transcript identification from GroSeq data, transcripts.txt)\n\
    tss (TSS identification from 5' RNA sequencing, tss.txt)\ndnase (Hypersensitivity\
    \ [crawford style (nicking)], peaks.txt)\nsuper (Super Enhancers, superEnhancers.txt)\n\
    superhistone (Super Enhancers from H3K27ac data, superEnhancers.txt)\nmC (Cytosine\
    \ methylation (BS-seq/methylC-seq), regions.txt)\ndamid (DamID enrichment from\
    \ DpnI digestion, regions.txt)\nclip (CLIP-Seq enrichment, strand specific, peaks.txt)"
  type: long?
  inputBinding:
    prefix: -style
- id: in_experiment_use_igginputcontrol
  doc: (Experiment to use as IgG/Input/Control)
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_size
  doc: '<#> (Peak size, default: auto)'
  type: boolean?
  inputBinding:
    prefix: -size
- id: in_mind_ist
  doc: '<#> (minimum distance between peaks, default: peak size x2)'
  type: boolean?
  inputBinding:
    prefix: -minDist
- id: in_g_size
  doc: '<#> (Set effective mappable genome size, default: 2e9)'
  type: boolean?
  inputBinding:
    prefix: -gsize
- id: in_frag_length
  doc: '<#|auto> (Approximate fragment length, default: auto)'
  type: boolean?
  inputBinding:
    prefix: -fragLength
- id: in_input_frag_length
  doc: '<#|auto> (Approximate fragment length of input tags, default: auto)'
  type: boolean?
  inputBinding:
    prefix: -inputFragLength
- id: in_tbp
  doc: '<#> (Maximum tags per bp to count, 0 = no limit, default: auto)'
  type: boolean?
  inputBinding:
    prefix: -tbp
- id: in_input_tbp
  doc: '<#> (Maximum tags per bp to count in input, 0 = no limit, default: auto)'
  type: boolean?
  inputBinding:
    prefix: -inputtbp
- id: in_strand
  doc: (find peaks using tags on both strands or separate, default:both)
  type: string?
  inputBinding:
    prefix: -strand
- id: in_norm
  doc: '# (Tag count to normalize to, default 10000000)'
  type: boolean?
  inputBinding:
    prefix: -norm
- id: in_region
  doc: (extends start/stop coordinates to cover full region considered "enriched")
  type: boolean?
  inputBinding:
    prefix: -region
- id: in_region_res
  doc: "<#> (number of fractions peaks are divided in when extending 'regions', def:\
    \ 4)"
  type: boolean?
  inputBinding:
    prefix: -regionRes
- id: in_center
  doc: (Centers peaks on maximum tag overlap and calculates focus ratios)
  type: boolean?
  inputBinding:
    prefix: -center
- id: in_nfr
  doc: "(Centers peaks on most likely nucleosome free region [works best with mnase\
    \ data])\n(-center and -nfr can be performed later with \"getPeakTags\""
  type: boolean?
  inputBinding:
    prefix: -nfr
- id: in_fold_enrichment_input
  doc: '<#> (fold enrichment over input tag count, default: 4.0)'
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_poisson_pvalue_input
  doc: '<#> (poisson p-value threshold relative to input tag count, default: 0.0001)'
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_fold_enrichment_local
  doc: '<#> (fold enrichment over local tag count, default: 4.0)'
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_lp
  doc: '<#> (poisson p-value threshold relative to local tag count, default: 0.0001)'
  type: boolean?
  inputBinding:
    prefix: -LP
- id: in_fold_enrichment_limit
  doc: '<#> (fold enrichment limit of expected unique tag positions, default: 2.0)'
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_local_size
  doc: '<#> (region to check for local tag enrichment, default: 10000)'
  type: boolean?
  inputBinding:
    prefix: -localSize
- id: in_input_size
  doc: '<#> (Size of region to search for control tags, default: 2x peak size)'
  type: boolean?
  inputBinding:
    prefix: -inputSize
- id: in_fdr
  doc: <#> (False discovery rate, default = 0.001)
  type: boolean?
  inputBinding:
    prefix: -fdr
- id: in_poisson
  doc: '<#> (Set poisson p-value cutoff, default: uses fdr)'
  type: boolean?
  inputBinding:
    prefix: -poisson
- id: in_tag_threshold
  doc: '<#> (Set # of tags to define a peak, default: 25)'
  type: boolean?
  inputBinding:
    prefix: -tagThreshold
- id: in_n_tag_threshold
  doc: '<#> (Set # of normalized tags to define a peak, by default uses 1e7 for norm)'
  type: boolean?
  inputBinding:
    prefix: -ntagThreshold
- id: in_min_tag_threshold
  doc: '<#> (Absolute minimum tags per peak, default: expected tags per peak)'
  type: boolean?
  inputBinding:
    prefix: -minTagThreshold
- id: in_super_slope
  doc: '<#> (Slope threshold to identify super vs. typical enh., default: 1.00)'
  type: boolean?
  inputBinding:
    prefix: -superSlope
- id: in_super_window
  doc: '<#> (moving window/number of peaks to use to calculate slope, default: 10)'
  type: boolean?
  inputBinding:
    prefix: -superWindow
- id: in_typical
  doc: '(Output typical enhancers to this file, default: not used)'
  type: File?
  inputBinding:
    prefix: -typical
- id: in_input_peaks
  doc: (initial peaks to use for super enhancer merging/scoring)
  type: File?
  inputBinding:
    prefix: -inputPeaks
- id: in_exclude_peaks
  doc: (regions to exclude from analysis, i.e. TSS regions for H3K27ac)
  type: File?
  inputBinding:
    prefix: -excludePeaks
- id: in_un_methyl_c
  doc: '(find unmethylated/methylated regions, default: -unmethyC)'
  type: boolean?
  inputBinding:
    prefix: -unmethylC
- id: in_mc_thresh
  doc: '<#> (methylation threshold of regions, default: avg methylation/2)'
  type: boolean?
  inputBinding:
    prefix: -mCthresh
- id: in_minn_umc
  doc: '<#> (Minimum number of cytosines per methylation peak, default: 6)'
  type: boolean?
  inputBinding:
    prefix: -minNumC
- id: in_tss_size
  doc: '<#> (size of region for initiation detection/artifact size, default: 250)'
  type: boolean?
  inputBinding:
    prefix: -tssSize
- id: in_min_body_size
  doc: '<#> (size of regoin for transcript body detection, default: 1000)'
  type: boolean?
  inputBinding:
    prefix: -minBodySize
- id: in_tss_fold
  doc: '<#> (fold enrichment for new initiation dectection, default: 4.0)'
  type: boolean?
  inputBinding:
    prefix: -tssFold
- id: in_body_fold
  doc: '<#> (fold enrichment for new transcript dectection, default: 4.0)'
  type: boolean?
  inputBinding:
    prefix: -bodyFold
- id: in_end_fold
  doc: '<#> (end transcript when levels are this much less than the start, default:
    10.0)'
  type: boolean?
  inputBinding:
    prefix: -endFold
- id: in_method
  doc: '(method used for identifying new transcripts, default: fold)'
  type: string?
  inputBinding:
    prefix: -method
- id: in_uniq_map
  doc: "(directory of binary files specifying uniquely mappable locations)\nDownload\
    \ from http://biowhat.ucsd.edu/homer/groseq/"
  type: Directory?
  inputBinding:
    prefix: -uniqmap
- id: in_conf_p_value
  doc: '<#> (confidence p-value: 1.00e-05)'
  type: boolean?
  inputBinding:
    prefix: -confPvalue
- id: in_min_read_depth
  doc: '<#> (Minimum initial read depth for transcripts, default: auto)'
  type: boolean?
  inputBinding:
    prefix: -minReadDepth
- id: in_pseudo_count
  doc: '<#> (Pseudo tag count, default: 2.0)'
  type: boolean?
  inputBinding:
    prefix: -pseudoCount
- id: in_rev
  doc: (reverse strand of reads - for first-strand rna-seq/gro-seq)
  type: boolean?
  inputBinding:
    prefix: -rev
- id: in_gtf
  doc: "(Output de novo transcripts in GTF format)\n\"-o auto\" will produce <dir>/transcripts.txt\
    \ and <dir>/transcripts.gtf\n"
  type: File?
  inputBinding:
    prefix: -gtf
- id: in_tag_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_name_output
  doc: "(file name for to output peaks, default: stdout)\n\"-o auto\" will send output\
    \ to \"<tag directory>/peaks.txt\", \".../regions.txt\",\nor \".../transcripts.txt\"\
    \ depending on the \"-style\" option"
  type: File?
  outputBinding:
    glob: $(inputs.in_file_name_output)
- id: out_typical
  doc: '(Output typical enhancers to this file, default: not used)'
  type: File?
  outputBinding:
    glob: $(inputs.in_typical)
hints: []
cwlVersion: v1.1
baseCommand:
- findPeaks
