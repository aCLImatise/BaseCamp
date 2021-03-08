class: CommandLineTool
id: haploview.cwl
inputs:
- id: in_version
  doc: Print out the version number
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_memory
  doc: allocates <memsize> megabytes of memory (default 512)
  type: long?
  inputBinding:
    prefix: -memory
- id: in_no_gui
  doc: Command line output only
  type: boolean?
  inputBinding:
    prefix: -nogui
- id: in_quiet
  doc: Quiet mode- doesnt print any warnings or information to screen
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_log
  doc: Specify a logfile name (defaults to haploview.log if no name specified)
  type: File?
  inputBinding:
    prefix: -log
- id: in_out
  doc: Specify a fileroot to be used for all output files
  type: File?
  inputBinding:
    prefix: -out
- id: in_ped_file
  doc: Specify an input file (or http:// location) in pedigree file format
  type: File?
  inputBinding:
    prefix: -pedfile
- id: in_hapmap
  doc: Specify an input file (or http:// location) in HapMap format
  type: File?
  inputBinding:
    prefix: -hapmap
- id: in_phased_hmp_data
  doc: Specify a HapMap PHASE data file (or http:// location)
  type: File?
  inputBinding:
    prefix: -phasedhmpdata
- id: in_phased_hmp_sample
  doc: Specify a HapMap PHASE sample file (or http:// location)
  type: File?
  inputBinding:
    prefix: -phasedhmpsample
- id: in_phased_hmp_legend
  doc: Specify a HapMap PHASE legend file (or http:// location)
  type: File?
  inputBinding:
    prefix: -phasedhmplegend
- id: in_gzip
  doc: Indicates that phased input files use GZIP compression
  type: boolean?
  inputBinding:
    prefix: -gzip
- id: in_hapmap_download
  doc: Specify a phased HapMap download
  type: boolean?
  inputBinding:
    prefix: -hapmapDownload
- id: in_haps
  doc: Specify an input file (or http:// location) in .haps format
  type: File?
  inputBinding:
    prefix: -haps
- id: in_info
  doc: Specify a marker info file (or http:// location)
  type: File?
  inputBinding:
    prefix: -info
- id: in_plink
  doc: Specify a PLINK or other results file (or http:// location)
  type: File?
  inputBinding:
    prefix: -plink
- id: in_map
  doc: Specify a map file or binary map file (or http:// location)
  type: File?
  inputBinding:
    prefix: -map
- id: in_non_snp
  doc: Specify that the accompanying PLINK file is non-SNP based output
  type: File?
  inputBinding:
    prefix: -nonSNP
- id: in_select_cols
  doc: Activate the preloading column filter for PLINK loads
  type: boolean?
  inputBinding:
    prefix: -selectCols
- id: in_batch
  doc: "Batch mode. Each line in batch file should contain a genotype file\nfollowed\
    \ by an optional info file, separated by a space."
  type: File?
  inputBinding:
    prefix: -batch
- id: in_blocks
  doc: Blocks file (or http:// location), one block per line, will force output for
    these blocks
  type: File?
  inputBinding:
    prefix: -blocks
- id: in_track
  doc: Specify an input analysis track file (or http:// location)
  type: File?
  inputBinding:
    prefix: -track
- id: in_exclude_markers
  doc: "Specify markers (in range 1-N where N is total number of markers) to be\n\
    skipped for all analyses. Format: 1,2,5..12"
  type: long?
  inputBinding:
    prefix: -excludeMarkers
- id: in_skip_check
  doc: Skips the various genotype file checks
  type: boolean?
  inputBinding:
    prefix: -skipcheck
- id: in_chromosome
  doc: <1-22,X,Y>          Specifies the chromosome for this file or download
  type: boolean?
  inputBinding:
    prefix: -chromosome
- id: in_panel
  doc: <CEU,YRI,CHB+JPT>        Specifies the analysis panel for this HapMap download
  type: boolean?
  inputBinding:
    prefix: -panel
- id: in_startpos
  doc: Specifies the start position in kb for this HapMap download
  type: long?
  inputBinding:
    prefix: -startpos
- id: in_endpos
  doc: Specifies the end position in kb for this HapMap download
  type: long?
  inputBinding:
    prefix: -endpos
- id: in_release
  doc: <16a,21,22>            Specifies the HapMap phase for this HapMap download
    (defaults to 21)
  type: boolean?
  inputBinding:
    prefix: -release
- id: in_d_prime
  doc: Outputs LD text to <fileroot>.LD
  type: boolean?
  inputBinding:
    prefix: -dprime
- id: in_png
  doc: Outputs LD display to <fileroot>.LD.PNG
  type: boolean?
  inputBinding:
    prefix: -png
- id: in_compressed_png
  doc: Outputs compressed LD display to <fileroot>.LD.PNG
  type: boolean?
  inputBinding:
    prefix: -compressedpng
- id: in_svg
  doc: Outputs svg format LD display to <fileroot>.LD.SVG
  type: boolean?
  inputBinding:
    prefix: -svg
- id: in_info_track
  doc: Downloads and displays HapMap info track on PNG image output
  type: boolean?
  inputBinding:
    prefix: -infoTrack
- id: in_ld_color_scheme
  doc: "Specify an LD color scheme. <argument> should be one of:\nDEFAULT, RSQ, DPALT,\
    \ GAB, GAM"
  type: string?
  inputBinding:
    prefix: -ldcolorscheme
- id: in_ld_values
  doc: <DPRIME,RSQ,NONE>     Specify what to print in LD image output. default is
    DPrime
  type: boolean?
  inputBinding:
    prefix: -ldvalues
- id: in_check
  doc: "Outputs marker checks to <fileroot>.CHECK\nnote: -dprime  and -check default\
    \ to no blocks output.\nUse -blockoutput to also output blocks"
  type: boolean?
  inputBinding:
    prefix: -check
- id: in_ind_check
  doc: Outputs genotype percent per individual to <fileroot>.INDCHECK
  type: boolean?
  inputBinding:
    prefix: -indcheck
- id: in_mendel
  doc: Outputs Mendel error information to <fileroot>.MENDEL
  type: boolean?
  inputBinding:
    prefix: -mendel
- id: in_male_he_ts
  doc: Outputs male heterozygote information to <fileroot>.MALEHETS
  type: boolean?
  inputBinding:
    prefix: -malehets
- id: in_block_output
  doc: <GAB,GAM,SPI,ALL>  Output type. Gabriel, 4 gamete, spine output or all 3. default
    is Gabriel.
  type: boolean?
  inputBinding:
    prefix: -blockoutput
- id: in_block_cut_high_ci
  doc: Gabriel 'Strong LD' high confidence interval D' cutoff.
  type: string?
  inputBinding:
    prefix: -blockCutHighCI
- id: in_block_cut_low_ci
  doc: Gabriel 'Strong LD' low confidence interval D' cutoff.
  type: string?
  inputBinding:
    prefix: -blockCutLowCI
- id: in_block_maf_thresh
  doc: Gabriel MAF threshold.
  type: string?
  inputBinding:
    prefix: -blockMAFThresh
- id: in_block_rec_high_ci
  doc: Gabriel recombination high confidence interval D' cutoff.
  type: string?
  inputBinding:
    prefix: -blockRecHighCI
- id: in_block_inform_frac
  doc: Gabriel fraction of informative markers required to be in LD.
  type: string?
  inputBinding:
    prefix: -blockInformFrac
- id: in_block_four_gam_cut
  doc: 4 Gamete block cutoff for frequency of 4th pairwise haplotype.
  type: long?
  inputBinding:
    prefix: -block4GamCut
- id: in_blocks_pine_dp
  doc: Solid Spine blocks D' cutoff for 'Strong LD
  type: string?
  inputBinding:
    prefix: -blockSpineDP
- id: in_max_distance
  doc: Maximum comparison distance in kilobases (integer). Default is 500
  type: long?
  inputBinding:
    prefix: -maxdistance
- id: in_hap_thresh
  doc: Only output haps with at least this frequency
  type: string?
  inputBinding:
    prefix: -hapthresh
- id: in_spacing
  doc: "Proportional spacing of markers in LD display. <threshold> is a value\nbetween\
    \ 0 (no spacing) and 1 (max spacing). Default is 0"
  type: long?
  inputBinding:
    prefix: -spacing
- id: in_min_maf
  doc: "Minimum minor allele frequency to include a marker. <threshold> is a value\n\
    between 0 and 0.5. Default is .001"
  type: double?
  inputBinding:
    prefix: -minMAF
- id: in_max_mendel
  doc: Markers with more than <integer> Mendel errors will be excluded. Default is
    1.
  type: long?
  inputBinding:
    prefix: -maxMendel
- id: in_minge_no
  doc: "Exclude markers with less than <threshold> valid data. <threshold> is a value\n\
    between 0 and 1. Default is .75"
  type: double?
  inputBinding:
    prefix: -minGeno
- id: in_hw_cut_off
  doc: "Exclude markers with a HW p-value smaller than <threshold>. <threshold> is\
    \ a value\nbetween 0 and 1. Default is .001"
  type: double?
  inputBinding:
    prefix: -hwcutoff
- id: in_missing_cut_off
  doc: "Exclude individuals with more than <threshold> fraction missing data.\n<threshold>\
    \ is a value between 0 and 1. Default is .5"
  type: double?
  inputBinding:
    prefix: -missingCutoff
- id: in_assoc_cc
  doc: Outputs case control association results to <fileroot>.ASSOC and <fileroot>.HAPASSOC
  type: boolean?
  inputBinding:
    prefix: -assocCC
- id: in_assoc_tdt
  doc: Outputs trio association results to <fileroot>.ASSOC and <fileroot>.HAPASSOC
  type: boolean?
  inputBinding:
    prefix: -assocTDT
- id: in_custom_assoc
  doc: Loads a set of custom tests for association.
  type: File?
  inputBinding:
    prefix: -customAssoc
- id: in_perm_tests
  doc: "Performs <numtests> permutations on default association tests (or custom tests\n\
    if a custom association file is specified) and writes to <fileroot>.PERMUT"
  type: long?
  inputBinding:
    prefix: -permtests
- id: in_pairwise_tagging
  doc: Generates pairwise tagging information in <fileroot>.TAGS and .TESTS
  type: boolean?
  inputBinding:
    prefix: -pairwiseTagging
- id: in_aggressive_tagging
  doc: As above but generates 2-marker haplotype tags unless specified otherwise by
    -aggressiveNumMarkers
  type: boolean?
  inputBinding:
    prefix: -aggressiveTagging
- id: in_aggressive_num_markers
  doc: <2,3>     Specifies whether to use 2-marker haplotype tags or 2 and 3-marker
    haplotype tags.
  type: boolean?
  inputBinding:
    prefix: -aggressiveNumMarkers
- id: in_max_num_tags
  doc: Only selects <n> best tags.
  type: string?
  inputBinding:
    prefix: -maxNumTags
- id: in_dont_add_tags
  doc: Only uses forced in tags.
  type: boolean?
  inputBinding:
    prefix: -dontaddtags
- id: in_include_tags
  doc: Forces in a comma separated list of marker names as tags.
  type: string?
  inputBinding:
    prefix: -includeTags
- id: in_include_tags_file
  doc: Forces in a file (or http:// location) of one marker name per line as tags.
  type: File?
  inputBinding:
    prefix: -includeTagsFile
- id: in_exclude_tags
  doc: Excludes a comma separated list of marker names from being used as tags.
  type: string?
  inputBinding:
    prefix: -excludeTags
- id: in_exclude_tags_file
  doc: Excludes a file (or http:// location) of one marker name per line from being
    used as tags.
  type: File?
  inputBinding:
    prefix: -excludeTagsFile
- id: in_capture_alleles
  doc: Capture only the alleles contained in a file (or http:// location) of one marker
    name per line.
  type: File?
  inputBinding:
    prefix: -captureAlleles
- id: in_design_scores
  doc: Specify design scores in a file (or http:// location) of one marker name and
    one score per line
  type: File?
  inputBinding:
    prefix: -designScores
- id: in_min_design_scores
  doc: Specify a minimum design score threshold.
  type: string?
  inputBinding:
    prefix: -mindesignscores
- id: in_min_tag_distance
  doc: Specify a Minimum distance in bases between picked tags.
  type: string?
  inputBinding:
    prefix: -mintagdistance
- id: in_tag_lod_cut_off
  doc: Tagger LOD cutoff for creating multimarker tag haplotypes.
  type: string?
  inputBinding:
    prefix: -taglodcutoff
- id: in_tag_rsq_cut_off
  doc: Tagger r^2 cutoff.
  type: long?
  inputBinding:
    prefix: -tagrsqcutoff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_non_snp
  doc: Specify that the accompanying PLINK file is non-SNP based output
  type: File?
  outputBinding:
    glob: $(inputs.in_non_snp)
- id: out_blocks
  doc: Blocks file (or http:// location), one block per line, will force output for
    these blocks
  type: File?
  outputBinding:
    glob: $(inputs.in_blocks)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/haploview:4.2--0
cwlVersion: v1.1
baseCommand:
- haploview
