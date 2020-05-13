class: CommandLineTool
id: bayesTyperTools_addAttributes.cwl
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
- id: genome_file
  doc: reference genome file (fasta format) used for homopolymer length (HPL) calculation.
    If not specified HPL will not be  calculated.
  type: string
  inputBinding:
    prefix: --genome-file
- id: repeat_file
  doc: repeatmasker file used for repeat annotation (RMA). If not specified RMA will
    not be annotated.
  type: string
  inputBinding:
    prefix: --repeat-file
- id: independent_samples_regex
  doc: regular expression for matching independent samples (e.g. parents in a trio)
    used for absolute inbreeding coefficient  (IBC) calculation. If not specified
    IBC will not be calculated.
  type: string
  inputBinding:
    prefix: --independent-samples-regex
- id: trio_sample_info
  doc: trio sample id information used for concordance (CONC) calculation  (<father>,<mother>,<child>:<father>,<mother>,<child>:...).
    If not specified CONC will not be calculated.
  type: string
  inputBinding:
    prefix: --trio-sample-info
outputs: []
cwlVersion: v1.1
baseCommand:
- bayesTyperTools
- addAttributes
