class: CommandLineTool
id: bayesTyper_genotype.cwl
inputs:
- id: v
  doc: '[ --variant-clusters-file ] arg    variant_clusters.bin file (BayesTyper cluster
    output).'
  type: boolean
  inputBinding:
    prefix: -v
- id: c
  doc: '[ --cluster-data-dir ] arg         cluster data directory containing intercluster_regions.txt.gz,
    multigroup_kmers.bloom[Meta|Data] &  parameter_kmers.fa.gz (BayesTyper cluster
    output).'
  type: boolean
  inputBinding:
    prefix: -c
- id: s
  doc: '[ --samples-file ] arg             samples file (see github documentation
    for format specifications).'
  type: boolean
  inputBinding:
    prefix: -s
- id: g
  doc: '[ --genome-file ] arg              reference genome file (fasta format).'
  type: boolean
  inputBinding:
    prefix: -g
- id: d
  doc: '[ --decoy-file ] arg               decoy sequences file (fasta format).'
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: '[ --output-prefix ] arg (=bayestyper) output prefix.'
  type: boolean
  inputBinding:
    prefix: -o
- id: z
  doc: '[ --gzip-output ] [=arg(=1)] (=0)  compress <output-prefix>.vcf using gzip.'
  type: boolean
  inputBinding:
    prefix: -z
- id: r
  doc: '[ --random-seed ] arg (=unix time) seed for pseudo-random number generator.'
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: '[ --threads ] arg (=1)             number of threads used (+= 2 I/O threads).'
  type: boolean
  inputBinding:
    prefix: -p
- id: y
  doc: '[ --chromosome-ploidy-file ] arg   chromosome gender ploidy file (see github
    documentation for format specifications). Human ploidy levels will be assumed
    if no file is given.'
  type: boolean
  inputBinding:
    prefix: -y
- id: gibbs_burn_in
  doc: (=100)            number of burn-in iterations.
  type: string
  inputBinding:
    prefix: --gibbs-burn-in
- id: gibbs_samples
  doc: (=250)            number of Gibbs iterations.
  type: string
  inputBinding:
    prefix: --gibbs-samples
- id: number_of_gibbs_chains
  doc: (=20)    number of independent Gibbs sampling chains.
  type: string
  inputBinding:
    prefix: --number-of-gibbs-chains
- id: km_er_subsampling_rate
  doc: (=0.1)    subsampling rate for subsetting kmers used for genotype inference.
  type: string
  inputBinding:
    prefix: --kmer-subsampling-rate
- id: max_haplotype_variant_km_ers
  doc: (=500) maximum number of kmers used for genotype inference after subsampling
    across a haplotype candidate for each variant.
  type: string
  inputBinding:
    prefix: --max-haplotype-variant-kmers
- id: noise_genotyping
  doc: '[=arg(=1)] (=0)    estimate noise model parameters and genotypes jointly (generally
    slower and uses more memory).'
  type: boolean
  inputBinding:
    prefix: --noise-genotyping
- id: noise_rate_prior
  doc: (=1,0.01)      parameters for Poisson noise rate gamma prior (<shape>,<scale>).
    All samples will use the same parameters.
  type: string
  inputBinding:
    prefix: --noise-rate-prior
- id: min_genotype_posterior
  doc: (=0.99)  filter genotypes with a posterior probability (GPP) below <value>.
  type: string
  inputBinding:
    prefix: --min-genotype-posterior
- id: min_number_of_km_ers
  doc: (=1)        filter sampled alleles with less than <value> kmers (NAK).
  type: string
  inputBinding:
    prefix: --min-number-of-kmers
- id: disable_observed_km_ers
  doc: '[=arg(=1)] (=0) disable filtering of sampled alleles with a low fraction of
    observed kmers (FAK).'
  type: boolean
  inputBinding:
    prefix: --disable-observed-kmers
outputs: []
cwlVersion: v1.1
baseCommand:
- bayesTyper
- genotype
