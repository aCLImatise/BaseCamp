class: CommandLineTool
id: explore_thresholds.cwl
inputs:
- id: in_data_frame
  doc: "Full path to csv output of pandas dataframe from\nBAM_ANALYSIS module"
  type: File?
  inputBinding:
    prefix: --dataframe
- id: in_callable_bed
  doc: "Full path to OPTIONAL external bed file with callable\nregions. This script\
    \ will plot based on filters only,\ncallable sites only, and filters and callable\
    \ sites\ncombined. Default is 'None', which will plot based on\nfilters only."
  type: File?
  inputBinding:
    prefix: --callable_bed
- id: in_vcf
  doc: Full path to Platypus VCF output from BAM_ANALYSIS
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_chrom
  doc: "Name of chromosome to analyze. Default is 'ALL', which\nwill analyze all chromosomes\
    \ in dataframe together.\nOtherwise, will only plot for chromosome listed."
  type: string?
  inputBinding:
    prefix: --chrom
- id: in_whole_genome_threshold
  doc: "If flag provided, use full dataset to calculate mean\nfor filters. Otherwise,\
    \ will calculate mean per\nchromosome."
  type: boolean?
  inputBinding:
    prefix: --whole_genome_threshold
- id: in_min_depth_filter
  doc: "[MIN_DEPTH_FILTER [MIN_DEPTH_FILTER ...]]\nMinimum depth threshold for a window\
    \ to be considered\nhigh quality. Calculated as mean depth *\nmin_depth_filter.\
    \ So, a min_depth_filter of 0.2 would\nrequire at least a minimum depth of 2 if\
    \ the mean\ndepth was 10. Default is 0.0 to consider all windows."
  type: boolean?
  inputBinding:
    prefix: --min_depth_filter
- id: in_max_depth_filter
  doc: "[MAX_DEPTH_FILTER [MAX_DEPTH_FILTER ...]]\nMaximum depth threshold for a window\
    \ to be considered\nhigh quality. Calculated as mean depth *\nmax_depth_filter.\
    \ So, a max_depth_filter of 4 would\nrequire depths to be less than or equal to\
    \ 40 if the\nmean depth was 10. Default is 100000.0 to consider all\nwindows."
  type: boolean?
  inputBinding:
    prefix: --max_depth_filter
- id: in_mapq_cut_off
  doc: "[MAPQ_CUTOFF [MAPQ_CUTOFF ...]]\nMinimum mean mapq threshold for a window\
    \ to be\nconsidered high quality. Default is 20."
  type: boolean?
  inputBinding:
    prefix: --mapq_cutoff
- id: in_variant_site_quality
  doc: "Consider all SNPs with a site quality (QUAL) greater\nthan or equal to this\
    \ value. Default is 30."
  type: long?
  inputBinding:
    prefix: --variant_site_quality
- id: in_variant_genotype_quality
  doc: "Consider all SNPs with a sample genotype quality\ngreater than or equal to\
    \ this value. Default is 30."
  type: long?
  inputBinding:
    prefix: --variant_genotype_quality
- id: in_variant_depth
  doc: "Consider all SNPs with a sample depth greater than or\nequal to this value.\
    \ Default is 4."
  type: long?
  inputBinding:
    prefix: --variant_depth
- id: in_sample_id
  doc: Sample ID or other identifier to be used in naming
  type: string?
  inputBinding:
    prefix: --sample_id
- id: in_plot_snp_distance
  doc: "If True, will also plot a histogram of distances\nbetween SNPs. Will only\
    \ run on a single chromosome.\nDefault is False.\n"
  type: boolean?
  inputBinding:
    prefix: --plot_snp_distance
- id: in_module
  doc: --output_prefix OUTPUT_PREFIX
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_data_frame
  doc: "Full path to csv output of pandas dataframe from\nBAM_ANALYSIS module"
  type: File?
  outputBinding:
    glob: $(inputs.in_data_frame)
- id: out_vcf
  doc: Full path to Platypus VCF output from BAM_ANALYSIS
  type: File?
  outputBinding:
    glob: $(inputs.in_vcf)
hints: []
cwlVersion: v1.1
baseCommand:
- explore_thresholds
