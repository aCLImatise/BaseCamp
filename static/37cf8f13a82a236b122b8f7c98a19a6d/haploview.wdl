version 1.0

task Haploview {
  input {
    Boolean? version
    Int? memory
    Boolean? no_gui
    Boolean? quiet
    File? log
    File? out
    File? ped_file
    File? hapmap
    File? phased_hmp_data
    File? phased_hmp_sample
    File? phased_hmp_legend
    Boolean? gzip
    Boolean? hapmap_download
    File? haps
    File? info
    File? plink
    File? specify_map_file
    File? non_snp
    Boolean? select_cols
    File? batch
    File? blocks
    File? track
    Int? exclude_markers
    Boolean? skip_check
    Boolean? chromosome
    Boolean? panel
    Int? startpos
    Int? endpos
    Boolean? release
    Boolean? d_prime
    Boolean? png
    Boolean? compressed_png
    Boolean? svg
    Boolean? info_track
    String? ld_color_scheme
    Boolean? ld_values
    Boolean? check
    Boolean? ind_check
    Boolean? mendel
    Boolean? male_he_ts
    Boolean? block_output
    String? block_cut_high_ci
    String? block_cut_low_ci
    String? block_maf_thresh
    String? block_rec_high_ci
    String? block_inform_frac
    Int? block_four_gam_cut
    String? blocks_pine_dp
    Int? max_distance
    String? hap_thresh
    Int? spacing
    Float? min_maf
    Int? max_mendel
    Float? minge_no
    Float? hw_cut_off
    Float? missing_cut_off
    Boolean? assoc_cc
    Boolean? assoc_tdt
    File? custom_assoc
    Int? perm_tests
    Boolean? pairwise_tagging
    Boolean? aggressive_tagging
    Boolean? aggressive_num_markers
    String? max_num_tags
    Boolean? dont_add_tags
    String? include_tags
    File? include_tags_file
    String? exclude_tags
    File? exclude_tags_file
    File? capture_alleles
    File? design_scores
    String? min_design_scores
    String? min_tag_distance
    String? tag_lod_cut_off
    Int? tag_rsq_cut_off
  }
  command <<<
    haploview \
      ~{if (version) then "-version" else ""} \
      ~{if defined(memory) then ("-memory " +  '"' + memory + '"') else ""} \
      ~{if (no_gui) then "-nogui" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ped_file) then ("-pedfile " +  '"' + ped_file + '"') else ""} \
      ~{if defined(hapmap) then ("-hapmap " +  '"' + hapmap + '"') else ""} \
      ~{if defined(phased_hmp_data) then ("-phasedhmpdata " +  '"' + phased_hmp_data + '"') else ""} \
      ~{if defined(phased_hmp_sample) then ("-phasedhmpsample " +  '"' + phased_hmp_sample + '"') else ""} \
      ~{if defined(phased_hmp_legend) then ("-phasedhmplegend " +  '"' + phased_hmp_legend + '"') else ""} \
      ~{if (gzip) then "-gzip" else ""} \
      ~{if (hapmap_download) then "-hapmapDownload" else ""} \
      ~{if defined(haps) then ("-haps " +  '"' + haps + '"') else ""} \
      ~{if defined(info) then ("-info " +  '"' + info + '"') else ""} \
      ~{if defined(plink) then ("-plink " +  '"' + plink + '"') else ""} \
      ~{if defined(specify_map_file) then ("-map " +  '"' + specify_map_file + '"') else ""} \
      ~{if (non_snp) then "-nonSNP" else ""} \
      ~{if (select_cols) then "-selectCols" else ""} \
      ~{if defined(batch) then ("-batch " +  '"' + batch + '"') else ""} \
      ~{if defined(blocks) then ("-blocks " +  '"' + blocks + '"') else ""} \
      ~{if defined(track) then ("-track " +  '"' + track + '"') else ""} \
      ~{if defined(exclude_markers) then ("-excludeMarkers " +  '"' + exclude_markers + '"') else ""} \
      ~{if (skip_check) then "-skipcheck" else ""} \
      ~{if (chromosome) then "-chromosome" else ""} \
      ~{if (panel) then "-panel" else ""} \
      ~{if defined(startpos) then ("-startpos " +  '"' + startpos + '"') else ""} \
      ~{if defined(endpos) then ("-endpos " +  '"' + endpos + '"') else ""} \
      ~{if (release) then "-release" else ""} \
      ~{if (d_prime) then "-dprime" else ""} \
      ~{if (png) then "-png" else ""} \
      ~{if (compressed_png) then "-compressedpng" else ""} \
      ~{if (svg) then "-svg" else ""} \
      ~{if (info_track) then "-infoTrack" else ""} \
      ~{if defined(ld_color_scheme) then ("-ldcolorscheme " +  '"' + ld_color_scheme + '"') else ""} \
      ~{if (ld_values) then "-ldvalues" else ""} \
      ~{if (check) then "-check" else ""} \
      ~{if (ind_check) then "-indcheck" else ""} \
      ~{if (mendel) then "-mendel" else ""} \
      ~{if (male_he_ts) then "-malehets" else ""} \
      ~{if (block_output) then "-blockoutput" else ""} \
      ~{if defined(block_cut_high_ci) then ("-blockCutHighCI " +  '"' + block_cut_high_ci + '"') else ""} \
      ~{if defined(block_cut_low_ci) then ("-blockCutLowCI " +  '"' + block_cut_low_ci + '"') else ""} \
      ~{if defined(block_maf_thresh) then ("-blockMAFThresh " +  '"' + block_maf_thresh + '"') else ""} \
      ~{if defined(block_rec_high_ci) then ("-blockRecHighCI " +  '"' + block_rec_high_ci + '"') else ""} \
      ~{if defined(block_inform_frac) then ("-blockInformFrac " +  '"' + block_inform_frac + '"') else ""} \
      ~{if defined(block_four_gam_cut) then ("-block4GamCut " +  '"' + block_four_gam_cut + '"') else ""} \
      ~{if defined(blocks_pine_dp) then ("-blockSpineDP " +  '"' + blocks_pine_dp + '"') else ""} \
      ~{if defined(max_distance) then ("-maxdistance " +  '"' + max_distance + '"') else ""} \
      ~{if defined(hap_thresh) then ("-hapthresh " +  '"' + hap_thresh + '"') else ""} \
      ~{if defined(spacing) then ("-spacing " +  '"' + spacing + '"') else ""} \
      ~{if defined(min_maf) then ("-minMAF " +  '"' + min_maf + '"') else ""} \
      ~{if defined(max_mendel) then ("-maxMendel " +  '"' + max_mendel + '"') else ""} \
      ~{if defined(minge_no) then ("-minGeno " +  '"' + minge_no + '"') else ""} \
      ~{if defined(hw_cut_off) then ("-hwcutoff " +  '"' + hw_cut_off + '"') else ""} \
      ~{if defined(missing_cut_off) then ("-missingCutoff " +  '"' + missing_cut_off + '"') else ""} \
      ~{if (assoc_cc) then "-assocCC" else ""} \
      ~{if (assoc_tdt) then "-assocTDT" else ""} \
      ~{if defined(custom_assoc) then ("-customAssoc " +  '"' + custom_assoc + '"') else ""} \
      ~{if defined(perm_tests) then ("-permtests " +  '"' + perm_tests + '"') else ""} \
      ~{if (pairwise_tagging) then "-pairwiseTagging" else ""} \
      ~{if (aggressive_tagging) then "-aggressiveTagging" else ""} \
      ~{if (aggressive_num_markers) then "-aggressiveNumMarkers" else ""} \
      ~{if defined(max_num_tags) then ("-maxNumTags " +  '"' + max_num_tags + '"') else ""} \
      ~{if (dont_add_tags) then "-dontaddtags" else ""} \
      ~{if defined(include_tags) then ("-includeTags " +  '"' + include_tags + '"') else ""} \
      ~{if defined(include_tags_file) then ("-includeTagsFile " +  '"' + include_tags_file + '"') else ""} \
      ~{if defined(exclude_tags) then ("-excludeTags " +  '"' + exclude_tags + '"') else ""} \
      ~{if defined(exclude_tags_file) then ("-excludeTagsFile " +  '"' + exclude_tags_file + '"') else ""} \
      ~{if defined(capture_alleles) then ("-captureAlleles " +  '"' + capture_alleles + '"') else ""} \
      ~{if defined(design_scores) then ("-designScores " +  '"' + design_scores + '"') else ""} \
      ~{if defined(min_design_scores) then ("-mindesignscores " +  '"' + min_design_scores + '"') else ""} \
      ~{if defined(min_tag_distance) then ("-mintagdistance " +  '"' + min_tag_distance + '"') else ""} \
      ~{if defined(tag_lod_cut_off) then ("-taglodcutoff " +  '"' + tag_lod_cut_off + '"') else ""} \
      ~{if defined(tag_rsq_cut_off) then ("-tagrsqcutoff " +  '"' + tag_rsq_cut_off + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haploview:4.2--0"
  }
  parameter_meta {
    version: "Print out the version number"
    memory: "allocates <memsize> megabytes of memory (default 512)"
    no_gui: "Command line output only"
    quiet: "Quiet mode- doesnt print any warnings or information to screen"
    log: "Specify a logfile name (defaults to haploview.log if no name specified)"
    out: "Specify a fileroot to be used for all output files"
    ped_file: "Specify an input file (or http:// location) in pedigree file format"
    hapmap: "Specify an input file (or http:// location) in HapMap format"
    phased_hmp_data: "Specify a HapMap PHASE data file (or http:// location)"
    phased_hmp_sample: "Specify a HapMap PHASE sample file (or http:// location)"
    phased_hmp_legend: "Specify a HapMap PHASE legend file (or http:// location)"
    gzip: "Indicates that phased input files use GZIP compression"
    hapmap_download: "Specify a phased HapMap download"
    haps: "Specify an input file (or http:// location) in .haps format"
    info: "Specify a marker info file (or http:// location)"
    plink: "Specify a PLINK or other results file (or http:// location)"
    specify_map_file: "Specify a map file or binary map file (or http:// location)"
    non_snp: "Specify that the accompanying PLINK file is non-SNP based output"
    select_cols: "Activate the preloading column filter for PLINK loads"
    batch: "Batch mode. Each line in batch file should contain a genotype file\\nfollowed by an optional info file, separated by a space."
    blocks: "Blocks file (or http:// location), one block per line, will force output for these blocks"
    track: "Specify an input analysis track file (or http:// location)"
    exclude_markers: "Specify markers (in range 1-N where N is total number of markers) to be\\nskipped for all analyses. Format: 1,2,5..12"
    skip_check: "Skips the various genotype file checks"
    chromosome: "<1-22,X,Y>          Specifies the chromosome for this file or download"
    panel: "<CEU,YRI,CHB+JPT>        Specifies the analysis panel for this HapMap download"
    startpos: "Specifies the start position in kb for this HapMap download"
    endpos: "Specifies the end position in kb for this HapMap download"
    release: "<16a,21,22>            Specifies the HapMap phase for this HapMap download (defaults to 21)"
    d_prime: "Outputs LD text to <fileroot>.LD"
    png: "Outputs LD display to <fileroot>.LD.PNG"
    compressed_png: "Outputs compressed LD display to <fileroot>.LD.PNG"
    svg: "Outputs svg format LD display to <fileroot>.LD.SVG"
    info_track: "Downloads and displays HapMap info track on PNG image output"
    ld_color_scheme: "Specify an LD color scheme. <argument> should be one of:\\nDEFAULT, RSQ, DPALT, GAB, GAM"
    ld_values: "<DPRIME,RSQ,NONE>     Specify what to print in LD image output. default is DPrime"
    check: "Outputs marker checks to <fileroot>.CHECK\\nnote: -dprime  and -check default to no blocks output.\\nUse -blockoutput to also output blocks"
    ind_check: "Outputs genotype percent per individual to <fileroot>.INDCHECK"
    mendel: "Outputs Mendel error information to <fileroot>.MENDEL"
    male_he_ts: "Outputs male heterozygote information to <fileroot>.MALEHETS"
    block_output: "<GAB,GAM,SPI,ALL>  Output type. Gabriel, 4 gamete, spine output or all 3. default is Gabriel."
    block_cut_high_ci: "Gabriel 'Strong LD' high confidence interval D' cutoff."
    block_cut_low_ci: "Gabriel 'Strong LD' low confidence interval D' cutoff."
    block_maf_thresh: "Gabriel MAF threshold."
    block_rec_high_ci: "Gabriel recombination high confidence interval D' cutoff."
    block_inform_frac: "Gabriel fraction of informative markers required to be in LD."
    block_four_gam_cut: "4 Gamete block cutoff for frequency of 4th pairwise haplotype."
    blocks_pine_dp: "Solid Spine blocks D' cutoff for 'Strong LD"
    max_distance: "Maximum comparison distance in kilobases (integer). Default is 500"
    hap_thresh: "Only output haps with at least this frequency"
    spacing: "Proportional spacing of markers in LD display. <threshold> is a value\\nbetween 0 (no spacing) and 1 (max spacing). Default is 0"
    min_maf: "Minimum minor allele frequency to include a marker. <threshold> is a value\\nbetween 0 and 0.5. Default is .001"
    max_mendel: "Markers with more than <integer> Mendel errors will be excluded. Default is 1."
    minge_no: "Exclude markers with less than <threshold> valid data. <threshold> is a value\\nbetween 0 and 1. Default is .75"
    hw_cut_off: "Exclude markers with a HW p-value smaller than <threshold>. <threshold> is a value\\nbetween 0 and 1. Default is .001"
    missing_cut_off: "Exclude individuals with more than <threshold> fraction missing data.\\n<threshold> is a value between 0 and 1. Default is .5"
    assoc_cc: "Outputs case control association results to <fileroot>.ASSOC and <fileroot>.HAPASSOC"
    assoc_tdt: "Outputs trio association results to <fileroot>.ASSOC and <fileroot>.HAPASSOC"
    custom_assoc: "Loads a set of custom tests for association."
    perm_tests: "Performs <numtests> permutations on default association tests (or custom tests\\nif a custom association file is specified) and writes to <fileroot>.PERMUT"
    pairwise_tagging: "Generates pairwise tagging information in <fileroot>.TAGS and .TESTS"
    aggressive_tagging: "As above but generates 2-marker haplotype tags unless specified otherwise by -aggressiveNumMarkers"
    aggressive_num_markers: "<2,3>     Specifies whether to use 2-marker haplotype tags or 2 and 3-marker haplotype tags."
    max_num_tags: "Only selects <n> best tags."
    dont_add_tags: "Only uses forced in tags."
    include_tags: "Forces in a comma separated list of marker names as tags."
    include_tags_file: "Forces in a file (or http:// location) of one marker name per line as tags."
    exclude_tags: "Excludes a comma separated list of marker names from being used as tags."
    exclude_tags_file: "Excludes a file (or http:// location) of one marker name per line from being used as tags."
    capture_alleles: "Capture only the alleles contained in a file (or http:// location) of one marker name per line."
    design_scores: "Specify design scores in a file (or http:// location) of one marker name and one score per line"
    min_design_scores: "Specify a minimum design score threshold."
    min_tag_distance: "Specify a Minimum distance in bases between picked tags."
    tag_lod_cut_off: "Tagger LOD cutoff for creating multimarker tag haplotypes."
    tag_rsq_cut_off: "Tagger r^2 cutoff."
  }
  output {
    File out_stdout = stdout()
    File out_non_snp = "${in_non_snp}"
    File out_blocks = "${in_blocks}"
  }
}