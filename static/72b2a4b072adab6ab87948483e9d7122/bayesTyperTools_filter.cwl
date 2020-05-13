class: CommandLineTool
id: bayesTyperTools_filter.cwl
inputs:
- id: v
  doc: '[ --variant-file ] arg             variant file (vcf format).'
  type: boolean
  inputBinding:
    prefix: -v
- id: o
  doc: '[ --output-prefix ] arg            output prefix.'
  type: boolean
  inputBinding:
    prefix: -o
- id: z
  doc: '[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.'
  type: boolean
  inputBinding:
    prefix: -z
- id: min_homozygote_genotypes
  doc: (=0)   filter variants with less than <value> homozygote genotypes (calculated
    before other filters).
  type: string
  inputBinding:
    prefix: --min-homozygote-genotypes
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
- id: km_er_coverage_file
  doc: (=bayestyper_genomic_parameters.txt) sample kmer coverage file used for filtering
    sampled alleles with a low fraction of observed kmers (FAK).
  type: string
  inputBinding:
    prefix: --kmer-coverage-file
outputs: []
cwlVersion: v1.1
baseCommand:
- bayesTyperTools
- filter
