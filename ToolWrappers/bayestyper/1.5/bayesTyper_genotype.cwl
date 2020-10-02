class: CommandLineTool
id: bayesTyper_genotype.cwl
inputs:
- id: in_arg_file_output
  doc: '[ --variant-clusters-file ] arg    variant_clusters.bin file (BayesTyper cluster
    output).'
  type: File
  inputBinding:
    prefix: -v
- id: in_parameterkmersfagz_bayestyper_cluster
  doc: "[ --cluster-data-dir ] arg         cluster data directory containing intercluster_regions.txt.gz,\
    \ multigroup_kmers.bloom[Meta|Data] &\nparameter_kmers.fa.gz (BayesTyper cluster\
    \ output)."
  type: Directory
  inputBinding:
    prefix: -c
- id: in_arg_samples_file
  doc: '[ --samples-file ] arg             samples file (see github documentation
    for format specifications).'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_reference_genome
  doc: '[ --genome-file ] arg              reference genome file (fasta format).'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_arg_decoy_sequences
  doc: '[ --decoy-file ] arg               decoy sequences file (fasta format).'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_arg_bayestyperoutput_prefix
  doc: "[ --output-prefix ] arg (=bayestyper)\noutput prefix."
  type: boolean
  inputBinding:
    prefix: -o
- id: in_compress_outputprefixvcf_using
  doc: '[ --gzip-output ] [=arg(=1)] (=0)  compress <output-prefix>.vcf using gzip.'
  type: boolean
  inputBinding:
    prefix: -z
- id: in_arg_unix_time
  doc: '[ --random-seed ] arg (=unix time) seed for pseudo-random number generator.'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_number_threads
  doc: '[ --threads ] arg (=1)             number of threads used (+= 2 I/O threads).'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_gender_file
  doc: "[ --chromosome-ploidy-file ] arg   chromosome gender ploidy file (see github\
    \ documentation for format specifications). Human ploidy levels will be assumed\n\
    if no file is given."
  type: boolean
  inputBinding:
    prefix: -y
- id: in_gibbs_burn_in
  doc: (=100)            number of burn-in iterations.
  type: long
  inputBinding:
    prefix: --gibbs-burn-in
- id: in_gibbs_samples
  doc: (=250)            number of Gibbs iterations.
  type: long
  inputBinding:
    prefix: --gibbs-samples
- id: in_number_of_gibbs_chains
  doc: (=20)    number of independent Gibbs sampling chains.
  type: long
  inputBinding:
    prefix: --number-of-gibbs-chains
- id: in_km_er_subsampling_rate
  doc: (=0.1)    subsampling rate for subsetting kmers used for genotype inference.
  type: double
  inputBinding:
    prefix: --kmer-subsampling-rate
- id: in_max_haplotype_variant_km_ers
  doc: "(=500)\nmaximum number of kmers used for genotype inference after subsampling\
    \ across a haplotype candidate for each variant."
  type: long
  inputBinding:
    prefix: --max-haplotype-variant-kmers
- id: in_noise_genotyping
  doc: '[=arg(=1)] (=0)    estimate noise model parameters and genotypes jointly (generally
    slower and uses more memory).'
  type: boolean
  inputBinding:
    prefix: --noise-genotyping
- id: in_noise_rate_prior
  doc: (=1,0.01)      parameters for Poisson noise rate gamma prior (<shape>,<scale>).
    All samples will use the same parameters.
  type: double
  inputBinding:
    prefix: --noise-rate-prior
- id: in_min_genotype_posterior
  doc: (=0.99)  filter genotypes with a posterior probability (GPP) below <value>.
  type: long
  inputBinding:
    prefix: --min-genotype-posterior
- id: in_min_number_of_km_ers
  doc: (=1)        filter sampled alleles with less than <value> kmers (NAK).
  type: long
  inputBinding:
    prefix: --min-number-of-kmers
- id: in_disable_observed_km_ers
  doc: "[=arg(=1)] (=0)\ndisable filtering of sampled alleles with a low fraction\
    \ of observed kmers (FAK).\n"
  type: boolean
  inputBinding:
    prefix: --disable-observed-kmers
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_file_output
  doc: '[ --variant-clusters-file ] arg    variant_clusters.bin file (BayesTyper cluster
    output).'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_file_output)
- id: out_parameterkmersfagz_bayestyper_cluster
  doc: "[ --cluster-data-dir ] arg         cluster data directory containing intercluster_regions.txt.gz,\
    \ multigroup_kmers.bloom[Meta|Data] &\nparameter_kmers.fa.gz (BayesTyper cluster\
    \ output)."
  type: Directory
  outputBinding:
    glob: $(inputs.in_parameterkmersfagz_bayestyper_cluster)
cwlVersion: v1.1
baseCommand:
- bayesTyper
- genotype
