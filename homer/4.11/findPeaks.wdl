version 1.0

task FindPeaks {
  input {
    String? experiment_use_igginputcontrol
    Boolean? size
    Boolean? mind_ist
    Boolean? g_size
    Boolean? frag_length
    Boolean? input_frag_length
    Boolean? tbp
    Boolean? input_tbp
    String? strand
    Boolean? norm
    Boolean? region
    Boolean? center
    Boolean? nfr
    Boolean? fold_enrichment_input
    Boolean? poisson_threshold_input
    Boolean? fold_enrichment_local
    Boolean? lp
    Boolean? fold_enrichment_limit
    Boolean? local_size
    Boolean? input_size
    Boolean? fdr
    Boolean? poisson
    Boolean? tag_threshold
    Boolean? n_tag_threshold
    Boolean? min_tag_threshold
    Boolean? super_slope
    Boolean? super_window
    File? typical
    File? input_peaks
    File? exclude_peaks
    Boolean? un_methyl_c
    Boolean? mc_thresh
    Boolean? minn_umc
    String tag_directory
  }
  command <<<
    findPeaks \
      ~{tag_directory} \
      ~{if defined(experiment_use_igginputcontrol) then ("-i " +  '"' + experiment_use_igginputcontrol + '"') else ""} \
      ~{true="-size" false="" size} \
      ~{true="-minDist" false="" mind_ist} \
      ~{true="-gsize" false="" g_size} \
      ~{true="-fragLength" false="" frag_length} \
      ~{true="-inputFragLength" false="" input_frag_length} \
      ~{true="-tbp" false="" tbp} \
      ~{true="-inputtbp" false="" input_tbp} \
      ~{if defined(strand) then ("-strand " +  '"' + strand + '"') else ""} \
      ~{true="-norm" false="" norm} \
      ~{true="-region" false="" region} \
      ~{true="-center" false="" center} \
      ~{true="-nfr" false="" nfr} \
      ~{true="-F" false="" fold_enrichment_input} \
      ~{true="-P" false="" poisson_threshold_input} \
      ~{true="-L" false="" fold_enrichment_local} \
      ~{true="-LP" false="" lp} \
      ~{true="-C" false="" fold_enrichment_limit} \
      ~{true="-localSize" false="" local_size} \
      ~{true="-inputSize" false="" input_size} \
      ~{true="-fdr" false="" fdr} \
      ~{true="-poisson" false="" poisson} \
      ~{true="-tagThreshold" false="" tag_threshold} \
      ~{true="-ntagThreshold" false="" n_tag_threshold} \
      ~{true="-minTagThreshold" false="" min_tag_threshold} \
      ~{true="-superSlope" false="" super_slope} \
      ~{true="-superWindow" false="" super_window} \
      ~{if defined(typical) then ("-typical " +  '"' + typical + '"') else ""} \
      ~{if defined(input_peaks) then ("-inputPeaks " +  '"' + input_peaks + '"') else ""} \
      ~{if defined(exclude_peaks) then ("-excludePeaks " +  '"' + exclude_peaks + '"') else ""} \
      ~{true="-unmethylC" false="" un_methyl_c} \
      ~{true="-mCthresh" false="" mc_thresh} \
      ~{true="-minNumC" false="" minn_umc}
  >>>
  parameter_meta {
    experiment_use_igginputcontrol: "(Experiment to use as IgG/Input/Control)"
    size: "<#> (Peak size, default: auto)"
    mind_ist: "<#> (minimum distance between peaks, default: peak size x2)"
    g_size: "<#> (Set effective mappable genome size, default: 2e9)"
    frag_length: "<#|auto> (Approximate fragment length, default: auto)"
    input_frag_length: "<#|auto> (Approximate fragment length of input tags, default: auto)"
    tbp: "<#> (Maximum tags per bp to count, 0 = no limit, default: auto)"
    input_tbp: "<#> (Maximum tags per bp to count in input, 0 = no limit, default: auto)"
    strand: "(find peaks using tags on both strands or separate, default:both)"
    norm: "# (Tag count to normalize to, default 10000000)"
    region: "(extends start/stop coordinates to cover full region considered \"enriched\") -regionRes <#> (number of fractions peaks are divided in when extending 'regions', def: 4)"
    center: "(Centers peaks on maximum tag overlap and calculates focus ratios)"
    nfr: "(Centers peaks on most likely nucleosome free region [works best with mnase data]) (-center and -nfr can be performed later with \"getPeakTags\""
    fold_enrichment_input: "<#> (fold enrichment over input tag count, default: 4.0)"
    poisson_threshold_input: "<#> (poisson p-value threshold relative to input tag count, default: 0.0001)"
    fold_enrichment_local: "<#> (fold enrichment over local tag count, default: 4.0)"
    lp: "<#> (poisson p-value threshold relative to local tag count, default: 0.0001)"
    fold_enrichment_limit: "<#> (fold enrichment limit of expected unique tag positions, default: 2.0)"
    local_size: "<#> (region to check for local tag enrichment, default: 10000)"
    input_size: "<#> (Size of region to search for control tags, default: 2x peak size)"
    fdr: "<#> (False discovery rate, default = 0.001)"
    poisson: "<#> (Set poisson p-value cutoff, default: uses fdr)"
    tag_threshold: "<#> (Set # of tags to define a peak, default: 25)"
    n_tag_threshold: "<#> (Set # of normalized tags to define a peak, by default uses 1e7 for norm)"
    min_tag_threshold: "<#> (Absolute minimum tags per peak, default: expected tags per peak)"
    super_slope: "<#> (Slope threshold to identify super vs. typical enh., default: 1.00)"
    super_window: "<#> (moving window/number of peaks to use to calculate slope, default: 10)"
    typical: "(Output typical enhancers to this file, default: not used)"
    input_peaks: "(initial peaks to use for super enhancer merging/scoring)"
    exclude_peaks: "(regions to exclude from analysis, i.e. TSS regions for H3K27ac)"
    un_methyl_c: "/ -methylC (find unmethylated/methylated regions, default: -unmethyC)"
    mc_thresh: "<#> (methylation threshold of regions, default: avg methylation/2)"
    minn_umc: "<#> (Minimum number of cytosines per methylation peak, default: 6)"
    tag_directory: ""
  }
}