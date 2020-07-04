class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bayesTyperTools_combine.cwl
inputs:
- id: arg_commaseparated_list
  doc: '[ --variant-files ] arg            comma-separated list of name and variant
    file (vcf format) pairs (<name>:<file>).'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_output_prefix
  doc: '[ --output-prefix ] arg            output prefix.'
  type: boolean
  inputBinding:
    prefix: -o
- id: compress_output_files
  doc: '[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.'
  type: boolean
  inputBinding:
    prefix: -z
- id: filter_ambiguous_alleles
  doc: '[=arg(=1)] (=0) filter alleles (including reference) with ambiguous nucleotides
    (non ACGT).'
  type: boolean
  inputBinding:
    prefix: --filter-ambiguous-alleles
outputs: []
cwlVersion: v1.1
baseCommand:
- bayesTyperTools
- combine
