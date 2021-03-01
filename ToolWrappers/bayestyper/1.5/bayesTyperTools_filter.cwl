class: CommandLineTool
id: bayesTyperTools_filter.cwl
inputs:
- id: in_arg_variant_file
  doc: '[ --variant-file ] arg             variant file (vcf format).'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_output_prefix
  doc: '[ --output-prefix ] arg            output prefix.'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_compress_output_files
  doc: '[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.'
  type: File?
  inputBinding:
    prefix: -z
- id: in_min_homozygote_genotypes
  doc: (=0)   filter variants with less than <value> homozygote genotypes (calculated
    before other filters).
  type: long?
  inputBinding:
    prefix: --min-homozygote-genotypes
- id: in_min_genotype_posterior
  doc: (=0.99)  filter genotypes with a posterior probability (GPP) below <value>.
  type: long?
  inputBinding:
    prefix: --min-genotype-posterior
- id: in_min_number_of_km_ers
  doc: (=1)        filter sampled alleles with less than <value> kmers (NAK).
  type: long?
  inputBinding:
    prefix: --min-number-of-kmers
- id: in_km_er_coverage_file
  doc: "(=bayestyper_genomic_parameters.txt)\nsample kmer coverage file used for filtering\
    \ sampled alleles with a low fraction of observed kmers (FAK).\n"
  type: File?
  inputBinding:
    prefix: --kmer-coverage-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_compress_output_files
  doc: '[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.'
  type: File?
  outputBinding:
    glob: $(inputs.in_compress_output_files)
hints: []
cwlVersion: v1.1
baseCommand:
- bayesTyperTools
- filter
