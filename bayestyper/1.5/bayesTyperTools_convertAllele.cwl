class: CommandLineTool
id: bayesTyperTools_convertAllele.cwl
inputs:
- id: v
  doc: '[ --variant-file ] arg             variant file (vcf format).'
  type: boolean
  inputBinding:
    prefix: -v
- id: g
  doc: '[ --genome-file ] arg              reference genome file (fasta format).'
  type: boolean
  inputBinding:
    prefix: -g
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
- id: alt_file
  doc: alternative allele file (fasta format). Sequence name in fasta (>"name") should
    match <"name">.
  type: string
  inputBinding:
    prefix: --alt-file
- id: mei_file
  doc: mobile element insertion(s) file (fasta format). Sequence name in fasta (>"name")
    should match <INS:ME:"name">.
  type: string
  inputBinding:
    prefix: --mei-file
- id: keep_imprecise
  doc: '[=arg(=1)] (=0)      do not filter imprecise variants'
  type: boolean
  inputBinding:
    prefix: --keep-imprecise
- id: keep_partial
  doc: "[=arg(=1)] (=0)        keep partial insertions where the center and length\
    \ is unknown (Manta output supported). The known left and right side  is connected\
    \ with ten N's."
  type: boolean
  inputBinding:
    prefix: --keep-partial
outputs: []
cwlVersion: v1.1
baseCommand:
- bayesTyperTools
- convertAllele
