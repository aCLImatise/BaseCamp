class: CommandLineTool
id: bayesTyperTools_combine.cwl
inputs:
- id: in_arg_commaseparated_list
  doc: '[ --variant-files ] arg            comma-separated list of name and variant
    file (vcf format) pairs (<name>:<file>).'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_arg_output_prefix
  doc: '[ --output-prefix ] arg            output prefix.'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_compress_output_files
  doc: '[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.'
  type: File
  inputBinding:
    prefix: -z
- id: in_filter_ambiguous_alleles
  doc: "[=arg(=1)] (=0)\nfilter alleles (including reference) with ambiguous nucleotides\
    \ (non ACGT).\n"
  type: boolean
  inputBinding:
    prefix: --filter-ambiguous-alleles
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_compress_output_files
  doc: '[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.'
  type: File
  outputBinding:
    glob: $(inputs.in_compress_output_files)
cwlVersion: v1.1
baseCommand:
- bayesTyperTools
- combine
