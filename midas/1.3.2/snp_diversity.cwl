#!/usr/bin/env cwl-runner

baseCommand:
- snp_diversity.py
class: CommandLineTool
cwlVersion: v1.0
id: snp_diversity.py
inputs:
- doc: path to output from `merge_midas.py snps` for one species directory should
    be named according to a species_id and contains files 'snps_*.txt')
  id: path
  inputBinding:
    position: 0
  type: File
- doc: path to output file (/dev/stdout)
  id: out
  inputBinding:
    prefix: --out
  type: File
- doc: compute diversity for individual genes or genome-wide (genome-wide)
  id: genomic_type
  inputBinding:
    prefix: --genomic_type
  type: string
- doc: compute diversity for individual samples or for pooled reads across samples
    (per-sample)
  id: sample_type
  inputBinding:
    prefix: --sample_type
  type: string
- doc: weight data from samples by sequencing depth when --sample_type=pooled-samples
  id: weight_by_depth
  inputBinding:
    prefix: --weight_by_depth
  type: boolean
- doc: 'randomly select N reads from each sample for each genomic site '
  id: rand_reads
  inputBinding:
    prefix: --rand_reads
  type: long
- doc: reads drawn with replacement
  id: replace_reads
  inputBinding:
    prefix: --replace_reads
  type: boolean
- doc: randomly select N samples from each genomic site
  id: rand_samples
  inputBinding:
    prefix: --rand_samples
  type: long
- doc: randomly select X proportion of high-quality genomic sites
  id: rand_sites
  inputBinding:
    prefix: --rand_sites
  type: double
- doc: minor allele frequency cutoff for determining if a site is a SNP (0.01)
  id: snp_maf
  inputBinding:
    prefix: --snp_maf
  type: double
- doc: call consensus alleles prior to calling SNPs
  id: consensus
  inputBinding:
    prefix: --consensus
  type: boolean
- doc: minimum average read depth per sample (0.0)
  id: sample_depth
  inputBinding:
    prefix: --sample_depth
  type: double
- doc: fraction of reference sites covered by at least 1 read (0.0)
  id: sample_cov
  inputBinding:
    prefix: --sample_cov
  type: double
- doc: maximum number of samples to process. useful for quick tests (use all)
  id: max_samples
  inputBinding:
    prefix: --max_samples
  type: long
- doc: comma-separated list of samples to use for computing diversity metrics. samples
    will still be subject to other filters
  id: keep_samples
  inputBinding:
    prefix: --keep_samples
  type: string
- doc: comma-separated list of samples to exclude from computing diversity metrics.
    samples will still be subject to other filters
  id: exclude_samples
  inputBinding:
    prefix: --exclude_samples
  type: string
- doc: path to file containing newline-delimited list of genomic sites to include.
    other filters will still apply
  id: site_list
  inputBinding:
    prefix: --site_list
  type: File
- doc: minimum number of mapped reads per site (2)
  id: site_depth
  inputBinding:
    prefix: --site_depth
  type: long
- doc: 'site has at least <site_depth> coverage in at least <site_prev> proportion
    of samples (0.0) a value of 1.0 will select sites that have sufficent coverage
    in all samples. a value of 0.0 will select all sites, including those with low
    coverage in many samples  NAs recorded for included sites with less than <site_depth>
    in a sample '
  id: site_prev
  inputBinding:
    prefix: --site_prev
  type: double
- doc: minimum average-minor-allele-frequency of site across samples (0.0) setting
    this above zero (e.g. 0.01, 0.02, 0.05) will only retain variable sites by default
    invariant sites are also retained.
  id: site_maf
  inputBinding:
    prefix: --site_maf
  type: double
- doc: maximum ratio of site-depth to mean-genome-depth (None) a value of 10 will
    filter genomic sites with 10x greater coverage than the genomic background
  id: site_ratio
  inputBinding:
    prefix: --site_ratio
  type: double
- doc: minimum fraction of reads supporting consensus allele (0.50)
  id: allele_support
  inputBinding:
    prefix: --allele_support
  type: double
- doc: "use genomic sites that intersect: 'CDS': coding genes, 'RNA': rRNA and tRNA\
    \ genes, 'IGS': intergenic regions"
  id: locus_type
  inputBinding:
    prefix: --locus_type
  type: string
- doc: "{1D,2D,3D,4D} if locus_type == 'CDS', use genomic sites with specified degeneracy:\
    \ 4D indicates synonymous and 1D non-synonymous sites"
  id: site_type
  inputBinding:
    prefix: --site_type
  type: boolean
- doc: maximum number of sites to include in output (use all) useful for quick tests
  id: max_sites
  inputBinding:
    prefix: --max_sites
  type: long
