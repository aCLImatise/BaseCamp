class: CommandLineTool
id: bayesTyper_cluster.cwl
inputs:
- id: in_arg_variant_format
  doc: '[ --variant-file ] arg             variant file (vcf format).'
  type: boolean
  inputBinding:
    prefix: -v
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
- id: in_arg_minimum_number
  doc: "[ --min-number-of-unit-variants ] arg (=5000000)\nminimum number of variants\
    \ per inference unit."
  type: boolean
  inputBinding:
    prefix: -u
- id: in_max_allele_length
  doc: (=500000)     exclude alleles (reference and alternative) longer than <length>.
  type: long
  inputBinding:
    prefix: --max-allele-length
- id: in_copy_number_variant_threshold
  doc: "(=0.5)\nminimum fraction of identical kmers required between an allele and\
    \ the downstream reference sequence in order for it to\nbe classified as a copy\
    \ number."
  type: long
  inputBinding:
    prefix: --copy-number-variant-threshold
- id: in_max_number_of_sample_haplotypes
  doc: "(=32)\nmaximum number of haplotype candidates per sample.\n"
  type: long
  inputBinding:
    prefix: --max-number-of-sample-haplotypes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bayesTyper
- cluster
