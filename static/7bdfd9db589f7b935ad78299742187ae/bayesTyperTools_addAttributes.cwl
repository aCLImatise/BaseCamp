class: CommandLineTool
id: bayesTyperTools_addAttributes.cwl
inputs:
- id: in_arg_variant_format
  doc: '[ --variant-file ] arg             variant file (vcf format).'
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
- id: in_genome_file
  doc: reference genome file (fasta format) used for homopolymer length (HPL) calculation.
    If not specified HPL will not be
  type: File
  inputBinding:
    prefix: --genome-file
- id: in_independent_samples_regex
  doc: "regular expression for matching independent samples (e.g. parents in a trio)\
    \ used for absolute inbreeding coefficient\n(IBC) calculation. If not specified\
    \ IBC will not be calculated."
  type: string
  inputBinding:
    prefix: --independent-samples-regex
- id: in_trio_sample_info
  doc: "trio sample id information used for concordance (CONC) calculation\n(<father>,<mother>,<child>:<father>,<mother>,<child>:...).\
    \ If not specified CONC will not be calculated.\n"
  type: string
  inputBinding:
    prefix: --trio-sample-info
- id: in_calculated_dot
  doc: --repeat-file arg                     repeatmasker file used for repeat annotation
    (RMA). If not specified RMA will not be annotated.
  type: string
  inputBinding:
    position: 0
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
- addAttributes
