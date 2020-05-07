class: CommandLineTool
id: snp_diversity.py.cwl
inputs:
- id: path
  doc: path to output from `merge_midas.py snps` for one species directory should
    be named according to a species_id and contains files 'snps_*.txt')
  type: File
  inputBinding:
    position: 0
- id: out
  doc: path to output file (/dev/stdout)
  type: File
  inputBinding:
    prefix: --out
- id: genomic_type
  doc: compute diversity for individual genes or genome-wide (genome-wide)
  type: string
  inputBinding:
    prefix: --genomic_type
- id: sample_type
  doc: compute diversity for individual samples or for pooled reads across samples
    (per-sample)
  type: string
  inputBinding:
    prefix: --sample_type
- id: weight_by_depth
  doc: weight data from samples by sequencing depth when --sample_type=pooled-samples
  type: boolean
  inputBinding:
    prefix: --weight_by_depth
- id: rand_reads
  doc: 'randomly select N reads from each sample for each genomic site '
  type: long
  inputBinding:
    prefix: --rand_reads
- id: replace_reads
  doc: reads drawn with replacement
  type: boolean
  inputBinding:
    prefix: --replace_reads
- id: rand_samples
  doc: randomly select N samples from each genomic site
  type: long
  inputBinding:
    prefix: --rand_samples
- id: rand_sites
  doc: randomly select X proportion of high-quality genomic sites
  type: double
  inputBinding:
    prefix: --rand_sites
- id: snp_maf
  doc: minor allele frequency cutoff for determining if a site is a SNP (0.01)
  type: double
  inputBinding:
    prefix: --snp_maf
- id: consensus
  doc: call consensus alleles prior to calling SNPs
  type: boolean
  inputBinding:
    prefix: --consensus
- id: sample_depth
  doc: minimum average read depth per sample (0.0)
  type: double
  inputBinding:
    prefix: --sample_depth
- id: sample_cov
  doc: fraction of reference sites covered by at least 1 read (0.0)
  type: double
  inputBinding:
    prefix: --sample_cov
- id: max_samples
  doc: maximum number of samples to process. useful for quick tests (use all)
  type: long
  inputBinding:
    prefix: --max_samples
- id: keep_samples
  doc: comma-separated list of samples to use for computing diversity metrics. samples
    will still be subject to other filters
  type: string
  inputBinding:
    prefix: --keep_samples
- id: exclude_samples
  doc: comma-separated list of samples to exclude from computing diversity metrics.
    samples will still be subject to other filters
  type: string
  inputBinding:
    prefix: --exclude_samples
- id: site_list
  doc: path to file containing newline-delimited list of genomic sites to include.
    other filters will still apply
  type: File
  inputBinding:
    prefix: --site_list
- id: site_depth
  doc: minimum number of mapped reads per site (2)
  type: long
  inputBinding:
    prefix: --site_depth
- id: site_prev
  doc: 'site has at least <site_depth> coverage in at least <site_prev> proportion
    of samples (0.0) a value of 1.0 will select sites that have sufficent coverage
    in all samples. a value of 0.0 will select all sites, including those with low
    coverage in many samples  NAs recorded for included sites with less than <site_depth>
    in a sample '
  type: double
  inputBinding:
    prefix: --site_prev
- id: site_maf
  doc: minimum average-minor-allele-frequency of site across samples (0.0) setting
    this above zero (e.g. 0.01, 0.02, 0.05) will only retain variable sites by default
    invariant sites are also retained.
  type: double
  inputBinding:
    prefix: --site_maf
- id: site_ratio
  doc: maximum ratio of site-depth to mean-genome-depth (None) a value of 10 will
    filter genomic sites with 10x greater coverage than the genomic background
  type: double
  inputBinding:
    prefix: --site_ratio
- id: allele_support
  doc: minimum fraction of reads supporting consensus allele (0.50)
  type: double
  inputBinding:
    prefix: --allele_support
- id: locus_type
  doc: "use genomic sites that intersect: 'CDS': coding genes, 'RNA': rRNA and tRNA\
    \ genes, 'IGS': intergenic regions"
  type: string
  inputBinding:
    prefix: --locus_type
- id: site_type
  doc: "{1D,2D,3D,4D} if locus_type == 'CDS', use genomic sites with specified degeneracy:\
    \ 4D indicates synonymous and 1D non-synonymous sites"
  type: boolean
  inputBinding:
    prefix: --site_type
- id: max_sites
  doc: maximum number of sites to include in output (use all) useful for quick tests
  type: long
  inputBinding:
    prefix: --max_sites
outputs: []
cwlVersion: v1.1
baseCommand:
- snp_diversity.py
