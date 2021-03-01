class: CommandLineTool
id: merge_midas.py_snps.cwl
inputs:
- id: in_threads
  doc: Number of CPUs to use (1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_input_sample_directories
  doc: Input to sample directories output by run_midas.py; see '-t' for details
  type: string?
  inputBinding:
    prefix: -i
- id: in_specify_one_ex
  doc: "Specify one of the following:\nlist: -i is a comma-separated list (ex: /samples/sample_1,/samples/sample_2)\n\
    dir: -i is a directory containing all samples (ex: /samples)\nfile: -i is a file\
    \ of paths to samples (ex: /sample_paths.txt)"
  type: File?
  inputBinding:
    prefix: -t
- id: in_path_reference_databaseby
  doc: "Path to reference database\nBy default, the MIDAS_DB environmental variable\
    \ is used"
  type: File?
  inputBinding:
    prefix: -d
- id: in_core_snps
  doc: 'Same as: --snp_type bi --site_depth 1 --site_ratio 2.0 --site_prev 0.95 (default)'
  type: boolean?
  inputBinding:
    prefix: --core_snps
- id: in_core_sites
  doc: 'Same as: --snp_type any --site_depth 1 --site_ratio 2.0 --site_prev 0.95'
  type: boolean?
  inputBinding:
    prefix: --core_sites
- id: in_all_snps
  doc: 'Same as: --snp_type bi --site_prev 0.0'
  type: boolean?
  inputBinding:
    prefix: --all_snps
- id: in_all_sites
  doc: 'Same as: --snp_type any --site_prev 0.0'
  type: boolean?
  inputBinding:
    prefix: --all_sites
- id: in_min_samples
  doc: All species with >= MIN_SAMPLES (1)
  type: long?
  inputBinding:
    prefix: --min_samples
- id: in_species_id
  doc: Comma-separated list of species ids
  type: string?
  inputBinding:
    prefix: --species_id
- id: in_max_species
  doc: Maximum number of species to call SNPs for (all with >= 1 sample)
  type: long?
  inputBinding:
    prefix: --max_species
- id: in_sample_depth
  doc: Minimum average read depth per sample (5.0)
  type: double?
  inputBinding:
    prefix: --sample_depth
- id: in_fract_cov
  doc: Fraction of reference sites covered by at least 1 read (0.4)
  type: double?
  inputBinding:
    prefix: --fract_cov
- id: in_max_samples
  doc: Maximum number of samples to process. useful for quick tests (use all)
  type: long?
  inputBinding:
    prefix: --max_samples
- id: in_all_samples
  doc: Include all samples in output
  type: boolean?
  inputBinding:
    prefix: --all_samples
- id: in_snp_type
  doc: "[ ...]    Specify one or more of the following:\nmono: keep sites with 1 allele\
    \ > ALLELE_FREQ\nbi: keep sites with 2 alleles > ALLELE_FREQ (default)\ntri: keep\
    \ sites with 3 alleles > ALLELE_FREQ\nquad: keep sites with 4 alleles > ALLELE_FREQ\n\
    any: keep sites regardless of observed alleles"
  type: boolean?
  inputBinding:
    prefix: --snp_type
- id: in_allele_freq
  doc: "Minimum frequency for calling an allele present (0.01)\nValues > 0.0 and <\
    \ 0.5 are accepted.\nEx: --snp_type=bi --allele_freq=0.01 keeps bi-allelic SNPs\
    \ with a minimum frequency of 1%"
  type: double?
  inputBinding:
    prefix: --allele_freq
- id: in_site_depth
  doc: "Minimum number of reads mapped to genomic site (1)\nUsed in combination with\
    \ --site_prev to determine if site is in core-genome"
  type: long?
  inputBinding:
    prefix: --site_depth
- id: in_site_ratio
  doc: "Maximum ratio of site depth to genome depth (2.0)\nThis filter helps to eliminate\
    \ genomic sites with abnormally high read depth"
  type: double?
  inputBinding:
    prefix: --site_ratio
- id: in_site_prev
  doc: "Minimum fraction of sample where genomic site is >= SITE_DEPTH and <= SITE_RATIO\
    \ (0.95)\nA high value selects for sites in the core-genome (i.e. present in nearly\
    \ all strains).\nA low value includes sites in variable regions and/or with abnormally\
    \ high read depth"
  type: double?
  inputBinding:
    prefix: --site_prev
- id: in_max_sites
  doc: Maximum number of sites to include in output (use all). Useful for quick tests
  type: long?
  inputBinding:
    prefix: --max_sites
- id: in_outdir
  doc: "Directory for output files. \nA subdirectory will be created for each species_id"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- merge_midas.py
- snps
