class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bayesTyper_cluster.cwl
inputs:
- id: arg_variant_format
  doc: '[ --variant-file ] arg             variant file (vcf format).'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_samples_file
  doc: '[ --samples-file ] arg             samples file (see github documentation
    for format specifications).'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_reference_genome
  doc: '[ --genome-file ] arg              reference genome file (fasta format).'
  type: boolean
  inputBinding:
    prefix: -g
- id: arg_decoy_sequences
  doc: '[ --decoy-file ] arg               decoy sequences file (fasta format).'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_bayestyper_output
  doc: '[ --output-prefix ] arg (=bayestyper) output prefix.'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_unix_time
  doc: '[ --random-seed ] arg (=unix time) seed for pseudo-random number generator.'
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_number_threads
  doc: '[ --threads ] arg (=1)             number of threads used (+= 2 I/O threads).'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_minimum_number
  doc: '[ --min-number-of-unit-variants ] arg (=5000000) minimum number of variants
    per inference unit.'
  type: boolean
  inputBinding:
    prefix: -u
- id: max_allele_length
  doc: (=500000)     exclude alleles (reference and alternative) longer than <length>.
  type: string
  inputBinding:
    prefix: --max-allele-length
- id: copy_number_variant_threshold
  doc: (=0.5) minimum fraction of identical kmers required between an allele and the
    downstream reference sequence in order for it to be classified as a copy number.
  type: string
  inputBinding:
    prefix: --copy-number-variant-threshold
- id: max_number_of_sample_haplotypes
  doc: (=32) maximum number of haplotype candidates per sample.
  type: string
  inputBinding:
    prefix: --max-number-of-sample-haplotypes
outputs: []
cwlVersion: v1.1
baseCommand:
- bayesTyper
- cluster
