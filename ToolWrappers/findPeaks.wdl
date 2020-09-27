version 1.0

task FindPeaks {
  input {
    File? file_name_output
    Int? style
    Directory? experiment_use_igginputcontrol
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
    Boolean? region_res
    Boolean? center
    Boolean? nfr
    Boolean? fold_enrichment_input
    Boolean? poisson_pvalue_input
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
    Boolean? tss_size
    Boolean? min_body_size
    Boolean? tss_fold
    Boolean? body_fold
    Boolean? end_fold
    String? method
    Directory? uniq_map
    Boolean? conf_p_value
    Boolean? min_read_depth
    Boolean? pseudo_count
    Boolean? rev
    File? gtf
    Directory tag_directory
  }
  command <<<
    findPeaks \
      ~{tag_directory} \
      ~{if defined(file_name_output) then ("-o " +  '"' + file_name_output + '"') else ""} \
      ~{if defined(style) then ("-style " +  '"' + style + '"') else ""} \
      ~{if defined(experiment_use_igginputcontrol) then ("-i " +  '"' + experiment_use_igginputcontrol + '"') else ""} \
      ~{if (size) then "-size" else ""} \
      ~{if (mind_ist) then "-minDist" else ""} \
      ~{if (g_size) then "-gsize" else ""} \
      ~{if (frag_length) then "-fragLength" else ""} \
      ~{if (input_frag_length) then "-inputFragLength" else ""} \
      ~{if (tbp) then "-tbp" else ""} \
      ~{if (input_tbp) then "-inputtbp" else ""} \
      ~{if defined(strand) then ("-strand " +  '"' + strand + '"') else ""} \
      ~{if (norm) then "-norm" else ""} \
      ~{if (region) then "-region" else ""} \
      ~{if (region_res) then "-regionRes" else ""} \
      ~{if (center) then "-center" else ""} \
      ~{if (nfr) then "-nfr" else ""} \
      ~{if (fold_enrichment_input) then "-F" else ""} \
      ~{if (poisson_pvalue_input) then "-P" else ""} \
      ~{if (fold_enrichment_local) then "-L" else ""} \
      ~{if (lp) then "-LP" else ""} \
      ~{if (fold_enrichment_limit) then "-C" else ""} \
      ~{if (local_size) then "-localSize" else ""} \
      ~{if (input_size) then "-inputSize" else ""} \
      ~{if (fdr) then "-fdr" else ""} \
      ~{if (poisson) then "-poisson" else ""} \
      ~{if (tag_threshold) then "-tagThreshold" else ""} \
      ~{if (n_tag_threshold) then "-ntagThreshold" else ""} \
      ~{if (min_tag_threshold) then "-minTagThreshold" else ""} \
      ~{if (super_slope) then "-superSlope" else ""} \
      ~{if (super_window) then "-superWindow" else ""} \
      ~{if defined(typical) then ("-typical " +  '"' + typical + '"') else ""} \
      ~{if defined(input_peaks) then ("-inputPeaks " +  '"' + input_peaks + '"') else ""} \
      ~{if defined(exclude_peaks) then ("-excludePeaks " +  '"' + exclude_peaks + '"') else ""} \
      ~{if (un_methyl_c) then "-unmethylC" else ""} \
      ~{if (mc_thresh) then "-mCthresh" else ""} \
      ~{if (minn_umc) then "-minNumC" else ""} \
      ~{if (tss_size) then "-tssSize" else ""} \
      ~{if (min_body_size) then "-minBodySize" else ""} \
      ~{if (tss_fold) then "-tssFold" else ""} \
      ~{if (body_fold) then "-bodyFold" else ""} \
      ~{if (end_fold) then "-endFold" else ""} \
      ~{if defined(method) then ("-method " +  '"' + method + '"') else ""} \
      ~{if defined(uniq_map) then ("-uniqmap " +  '"' + uniq_map + '"') else ""} \
      ~{if (conf_p_value) then "-confPvalue" else ""} \
      ~{if (min_read_depth) then "-minReadDepth" else ""} \
      ~{if (pseudo_count) then "-pseudoCount" else ""} \
      ~{if (rev) then "-rev" else ""} \
      ~{if defined(gtf) then ("-gtf " +  '"' + gtf + '"') else ""}
  >>>
  parameter_meta {
    file_name_output: "(file name for to output peaks, default: stdout)\\n\\\"-o auto\\\" will send output to \\\"<tag directory>/peaks.txt\\\", \\\".../regions.txt\\\",\\nor \\\".../transcripts.txt\\\" depending on the \\\"-style\\\" option"
    style: "(Specialized options for specific analysis strategies)\\nfactor (transcription factor ChIP-Seq, uses -center, output: peaks.txt,  default)\\nhistone (histone modification ChIP-Seq, region based, uses -region -size 500 -L 0, regions.txt)\\ngroseq (de novo transcript identification from GroSeq data, transcripts.txt)\\ntss (TSS identification from 5' RNA sequencing, tss.txt)\\ndnase (Hypersensitivity [crawford style (nicking)], peaks.txt)\\nsuper (Super Enhancers, superEnhancers.txt)\\nsuperhistone (Super Enhancers from H3K27ac data, superEnhancers.txt)\\nmC (Cytosine methylation (BS-seq/methylC-seq), regions.txt)\\ndamid (DamID enrichment from DpnI digestion, regions.txt)\\nclip (CLIP-Seq enrichment, strand specific, peaks.txt)"
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
    region: "(extends start/stop coordinates to cover full region considered \\\"enriched\\\")"
    region_res: "<#> (number of fractions peaks are divided in when extending 'regions', def: 4)"
    center: "(Centers peaks on maximum tag overlap and calculates focus ratios)"
    nfr: "(Centers peaks on most likely nucleosome free region [works best with mnase data])\\n(-center and -nfr can be performed later with \\\"getPeakTags\\\""
    fold_enrichment_input: "<#> (fold enrichment over input tag count, default: 4.0)"
    poisson_pvalue_input: "<#> (poisson p-value threshold relative to input tag count, default: 0.0001)"
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
    tss_size: "<#> (size of region for initiation detection/artifact size, default: 250)"
    min_body_size: "<#> (size of regoin for transcript body detection, default: 1000)"
    tss_fold: "<#> (fold enrichment for new initiation dectection, default: 4.0)"
    body_fold: "<#> (fold enrichment for new transcript dectection, default: 4.0)"
    end_fold: "<#> (end transcript when levels are this much less than the start, default: 10.0)"
    method: "(method used for identifying new transcripts, default: fold)"
    uniq_map: "(directory of binary files specifying uniquely mappable locations)\\nDownload from http://biowhat.ucsd.edu/homer/groseq/"
    conf_p_value: "<#> (confidence p-value: 1.00e-05)"
    min_read_depth: "<#> (Minimum initial read depth for transcripts, default: auto)"
    pseudo_count: "<#> (Pseudo tag count, default: 2.0)"
    rev: "(reverse strand of reads - for first-strand rna-seq/gro-seq)"
    gtf: "(Output de novo transcripts in GTF format)\\n\\\"-o auto\\\" will produce <dir>/transcripts.txt and <dir>/transcripts.gtf\\n"
    tag_directory: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_name_output = "${in_file_name_output}"
    File out_typical = "${in_typical}"
  }
}