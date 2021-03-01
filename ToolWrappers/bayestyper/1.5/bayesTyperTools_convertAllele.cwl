class: CommandLineTool
id: bayesTyperTools_convertAllele.cwl
inputs:
- id: in_arg_variant_file
  doc: '[ --variant-file ] arg             variant file (vcf format).'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_reference_genome
  doc: '[ --genome-file ] arg              reference genome file (fasta format).'
  type: boolean?
  inputBinding:
    prefix: -g
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
- id: in_alt_file
  doc: alternative allele file (fasta format). Sequence name in fasta (>"name") should
    match <"name">.
  type: File?
  inputBinding:
    prefix: --alt-file
- id: in_mei_file
  doc: mobile element insertion(s) file (fasta format). Sequence name in fasta (>"name")
    should match <INS:ME:"name">.
  type: File?
  inputBinding:
    prefix: --mei-file
- id: in_keep_imprecise
  doc: '[=arg(=1)] (=0)      do not filter imprecise variants'
  type: boolean?
  inputBinding:
    prefix: --keep-imprecise
- id: in_keep_partial
  doc: "[=arg(=1)] (=0)        keep partial insertions where the center and length\
    \ is unknown (Manta output supported). The known left and right side\nis connected\
    \ with ten N's.\n"
  type: boolean?
  inputBinding:
    prefix: --keep-partial
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
- convertAllele
