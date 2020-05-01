#!/usr/bin/env cwl-runner

baseCommand:
- call_consensus.py
class: CommandLineTool
cwlVersion: v1.0
id: call_consensus.py
inputs:
- doc: path to output from `merge_midas.py snps` for one species directory should
    be named according to a species_id and contains files 'snps_*.txt')
  id: path
  inputBinding:
    position: 0
  type: File
- doc: path to output file
  id: out
  inputBinding:
    prefix: --out
  type: File
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
- doc: comma-separated list of samples to include samples will still be subject to
    other filters
  id: keep_samples
  inputBinding:
    prefix: --keep_samples
  type: string
- doc: comma-separated list of samples to exclude. samples will still be subject to
    other filters
  id: exclude_samples
  inputBinding:
    prefix: --exclude_samples
  type: string
- doc: path to list of sites to include; other filters still apply
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
- doc: minimum fraction of reads supporting consensus allele (0.5)
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
