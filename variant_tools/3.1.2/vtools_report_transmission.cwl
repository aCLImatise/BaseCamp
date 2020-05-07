class: CommandLineTool
id: vtools_report_transmission.cwl
inputs:
- id: parents
  doc: PARENTS Names of parents, which should uniquely identify two samples.
  type: string
  inputBinding:
    prefix: --parents
- id: offspring
  doc: Names of one or more offspring samples.
  type: string[]
  inputBinding:
    prefix: --offspring
- id: de_novo
  doc: '[DENOVO [DENOVO ...]] A list of tables to store denovo variants for each offspring.
    DeNovo variants are defined as offspring variants that do not exist in any of
    the parents, including the cases when the offspring have different variants from
    what parents have at the same genomic locations.'
  type: boolean
  inputBinding:
    prefix: --denovo
- id: recessive
  doc: '[RECESSIVE [RECESSIVE ...]] A list of tables to store recessive variants for
    each offspring. Recessive variants are defined as variants that are homozygous
    in offspring, and heterozygous in both parents.'
  type: boolean
  inputBinding:
    prefix: --recessive
- id: inconsistent
  doc: '[INCONSISTENT [INCONSISTENT ...]] A list of tables to store variants for each
    offspring that demonstrate mendelian inconsistencies, namely variants that are
    not passed from parents to offspring in a Mendelian fashion. Examples of inconsistent
    variants include de novo variants, homozygous variants in offspring with only
    one parental carrier, wildtype offspring variants with a homozygous parent, heterozygous
    offspring variants with two homozygous parents, and more complicated cases when
    multiple variants appear at the same sites.'
  type: boolean
  inputBinding:
    prefix: --inconsistent
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- transmission
