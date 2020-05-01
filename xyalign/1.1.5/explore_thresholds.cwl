#!/usr/bin/env cwl-runner

baseCommand:
- explore_thresholds
class: CommandLineTool
cwlVersion: v1.0
id: explore_thresholds
inputs:
- doc: Full path to csv output of pandas dataframe from BAM_ANALYSIS module
  id: data_frame
  inputBinding:
    prefix: --dataframe
  type: string
- doc: Full path to OPTIONAL external bed file with callable regions. This script
    will plot based on filters only, callable sites only, and filters and callable
    sites combined. Default is 'None', which will plot based on filters only.
  id: callable_bed
  inputBinding:
    prefix: --callable_bed
  type: string
- doc: Full path to Platypus VCF output from BAM_ANALYSIS module
  id: vcf
  inputBinding:
    prefix: --vcf
  type: string
- doc: Full path to and prefix of output files.
  id: output_prefix
  inputBinding:
    prefix: --output_prefix
  type: string
- doc: Name of chromosome to analyze. Default is 'ALL', which will analyze all chromosomes
    in dataframe together. Otherwise, will only plot for chromosome listed.
  id: chrom
  inputBinding:
    prefix: --chrom
  type: string
- doc: If flag provided, use full dataset to calculate mean for filters. Otherwise,
    will calculate mean per chromosome.
  id: whole_genome_threshold
  inputBinding:
    prefix: --whole_genome_threshold
  type: boolean
- doc: '[MIN_DEPTH_FILTER [MIN_DEPTH_FILTER ...]] Minimum depth threshold for a window
    to be considered high quality. Calculated as mean depth * min_depth_filter. So,
    a min_depth_filter of 0.2 would require at least a minimum depth of 2 if the mean
    depth was 10. Default is 0.0 to consider all windows.'
  id: min_depth_filter
  inputBinding:
    prefix: --min_depth_filter
  type: boolean
- doc: '[MAX_DEPTH_FILTER [MAX_DEPTH_FILTER ...]] Maximum depth threshold for a window
    to be considered high quality. Calculated as mean depth * max_depth_filter. So,
    a max_depth_filter of 4 would require depths to be less than or equal to 40 if
    the mean depth was 10. Default is 100000.0 to consider all windows.'
  id: max_depth_filter
  inputBinding:
    prefix: --max_depth_filter
  type: boolean
- doc: '[MAPQ_CUTOFF [MAPQ_CUTOFF ...]] Minimum mean mapq threshold for a window to
    be considered high quality. Default is 20.'
  id: mapq_cut_off
  inputBinding:
    prefix: --mapq_cutoff
  type: boolean
- doc: Consider all SNPs with a site quality (QUAL) greater than or equal to this
    value. Default is 30.
  id: variant_site_quality
  inputBinding:
    prefix: --variant_site_quality
  type: string
- doc: Consider all SNPs with a sample genotype quality greater than or equal to this
    value. Default is 30.
  id: variant_genotype_quality
  inputBinding:
    prefix: --variant_genotype_quality
  type: string
- doc: Consider all SNPs with a sample depth greater than or equal to this value.
    Default is 4.
  id: variant_depth
  inputBinding:
    prefix: --variant_depth
  type: string
- doc: Sample ID or other identifier to be used in naming
  id: sample_id
  inputBinding:
    prefix: --sample_id
  type: string
- doc: If True, will also plot a histogram of distances between SNPs. Will only run
    on a single chromosome. Default is False.
  id: plot_snp_distance
  inputBinding:
    prefix: --plot_snp_distance
  type: boolean
