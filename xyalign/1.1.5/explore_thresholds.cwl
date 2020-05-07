class: CommandLineTool
id: explore_thresholds.cwl
inputs:
- id: data_frame
  doc: Full path to csv output of pandas dataframe from BAM_ANALYSIS module
  type: string
  inputBinding:
    prefix: --dataframe
- id: callable_bed
  doc: Full path to OPTIONAL external bed file with callable regions. This script
    will plot based on filters only, callable sites only, and filters and callable
    sites combined. Default is 'None', which will plot based on filters only.
  type: string
  inputBinding:
    prefix: --callable_bed
- id: vcf
  doc: Full path to Platypus VCF output from BAM_ANALYSIS module
  type: string
  inputBinding:
    prefix: --vcf
- id: output_prefix
  doc: Full path to and prefix of output files.
  type: string
  inputBinding:
    prefix: --output_prefix
- id: chrom
  doc: Name of chromosome to analyze. Default is 'ALL', which will analyze all chromosomes
    in dataframe together. Otherwise, will only plot for chromosome listed.
  type: string
  inputBinding:
    prefix: --chrom
- id: whole_genome_threshold
  doc: If flag provided, use full dataset to calculate mean for filters. Otherwise,
    will calculate mean per chromosome.
  type: boolean
  inputBinding:
    prefix: --whole_genome_threshold
- id: min_depth_filter
  doc: '[MIN_DEPTH_FILTER [MIN_DEPTH_FILTER ...]] Minimum depth threshold for a window
    to be considered high quality. Calculated as mean depth * min_depth_filter. So,
    a min_depth_filter of 0.2 would require at least a minimum depth of 2 if the mean
    depth was 10. Default is 0.0 to consider all windows.'
  type: boolean
  inputBinding:
    prefix: --min_depth_filter
- id: max_depth_filter
  doc: '[MAX_DEPTH_FILTER [MAX_DEPTH_FILTER ...]] Maximum depth threshold for a window
    to be considered high quality. Calculated as mean depth * max_depth_filter. So,
    a max_depth_filter of 4 would require depths to be less than or equal to 40 if
    the mean depth was 10. Default is 100000.0 to consider all windows.'
  type: boolean
  inputBinding:
    prefix: --max_depth_filter
- id: mapq_cut_off
  doc: '[MAPQ_CUTOFF [MAPQ_CUTOFF ...]] Minimum mean mapq threshold for a window to
    be considered high quality. Default is 20.'
  type: boolean
  inputBinding:
    prefix: --mapq_cutoff
- id: variant_site_quality
  doc: Consider all SNPs with a site quality (QUAL) greater than or equal to this
    value. Default is 30.
  type: string
  inputBinding:
    prefix: --variant_site_quality
- id: variant_genotype_quality
  doc: Consider all SNPs with a sample genotype quality greater than or equal to this
    value. Default is 30.
  type: string
  inputBinding:
    prefix: --variant_genotype_quality
- id: variant_depth
  doc: Consider all SNPs with a sample depth greater than or equal to this value.
    Default is 4.
  type: string
  inputBinding:
    prefix: --variant_depth
- id: sample_id
  doc: Sample ID or other identifier to be used in naming
  type: string
  inputBinding:
    prefix: --sample_id
- id: plot_snp_distance
  doc: If True, will also plot a histogram of distances between SNPs. Will only run
    on a single chromosome. Default is False.
  type: boolean
  inputBinding:
    prefix: --plot_snp_distance
outputs: []
cwlVersion: v1.1
baseCommand:
- explore_thresholds
