class: CommandLineTool
id: merge_midas.py_snps.cwl
inputs:
- id: outdir
  doc: Directory for output files.  A subdirectory will be created for each species_id
  type: string
  inputBinding:
    position: 0
- id: threads
  doc: Number of CPUs to use (1)
  type: long
  inputBinding:
    prefix: --threads
- id: i
  doc: Input to sample directories output by run_midas.py; see '-t' for details
  type: string
  inputBinding:
    prefix: -i
- id: t
  doc: 'Specify one of the following: list: -i is a comma-separated list (ex: /samples/sample_1,/samples/sample_2)
    dir: -i is a directory containing all samples (ex: /samples) file: -i is a file
    of paths to samples (ex: /sample_paths.txt)'
  type: string
  inputBinding:
    prefix: -t
- id: d
  doc: Path to reference database By default, the MIDAS_DB environmental variable
    is used
  type: string
  inputBinding:
    prefix: -d
- id: core_snps
  doc: 'Same as: --snp_type bi --site_depth 1 --site_ratio 2.0 --site_prev 0.95 (default)'
  type: boolean
  inputBinding:
    prefix: --core_snps
- id: core_sites
  doc: 'Same as: --snp_type any --site_depth 1 --site_ratio 2.0 --site_prev 0.95'
  type: boolean
  inputBinding:
    prefix: --core_sites
- id: all_snps
  doc: 'Same as: --snp_type bi --site_prev 0.0'
  type: boolean
  inputBinding:
    prefix: --all_snps
- id: all_sites
  doc: 'Same as: --snp_type any --site_prev 0.0'
  type: boolean
  inputBinding:
    prefix: --all_sites
- id: min_samples
  doc: All species with >= MIN_SAMPLES (1)
  type: long
  inputBinding:
    prefix: --min_samples
- id: species_id
  doc: Comma-separated list of species ids
  type: string
  inputBinding:
    prefix: --species_id
- id: max_species
  doc: Maximum number of species to call SNPs for (all with >= 1 sample)
  type: long
  inputBinding:
    prefix: --max_species
- id: sample_depth
  doc: Minimum average read depth per sample (5.0)
  type: double
  inputBinding:
    prefix: --sample_depth
- id: fract_cov
  doc: Fraction of reference sites covered by at least 1 read (0.4)
  type: double
  inputBinding:
    prefix: --fract_cov
- id: max_samples
  doc: Maximum number of samples to process. useful for quick tests (use all)
  type: long
  inputBinding:
    prefix: --max_samples
- id: all_samples
  doc: Include all samples in output
  type: boolean
  inputBinding:
    prefix: --all_samples
- id: snp_type
  doc: '[ ...]    Specify one or more of the following: mono: keep sites with 1 allele
    > ALLELE_FREQ bi: keep sites with 2 alleles > ALLELE_FREQ (default) tri: keep
    sites with 3 alleles > ALLELE_FREQ quad: keep sites with 4 alleles > ALLELE_FREQ
    any: keep sites regardless of observed alleles'
  type: boolean
  inputBinding:
    prefix: --snp_type
- id: allele_freq
  doc: 'Minimum frequency for calling an allele present (0.01) Values > 0.0 and <
    0.5 are accepted. Ex: --snp_type=bi --allele_freq=0.01 keeps bi-allelic SNPs with
    a minimum frequency of 1%'
  type: double
  inputBinding:
    prefix: --allele_freq
- id: site_depth
  doc: Minimum number of reads mapped to genomic site (1) Used in combination with
    --site_prev to determine if site is in core-genome
  type: long
  inputBinding:
    prefix: --site_depth
- id: site_ratio
  doc: Maximum ratio of site depth to genome depth (2.0) This filter helps to eliminate
    genomic sites with abnormally high read depth
  type: double
  inputBinding:
    prefix: --site_ratio
- id: site_prev
  doc: Minimum fraction of sample where genomic site is >= SITE_DEPTH and <= SITE_RATIO
    (0.95) A high value selects for sites in the core-genome (i.e. present in nearly
    all strains). A low value includes sites in variable regions and/or with abnormally
    high read depth
  type: double
  inputBinding:
    prefix: --site_prev
- id: max_sites
  doc: 'Maximum number of sites to include in output (use all). Useful for quick tests '
  type: long
  inputBinding:
    prefix: --max_sites
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_midas.py
- snps
