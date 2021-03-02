class: CommandLineTool
id: vtools_report_transmission.cwl
inputs:
- id: in_parentsnames_uniquely_identify
  doc: "PARENTS\nNames of parents, which should uniquely identify two\nsamples."
  type: string?
  inputBinding:
    prefix: --parents
- id: in_offspring
  doc: Names of one or more offspring samples.
  type: string[]
  inputBinding:
    prefix: --offspring
- id: in_de_novo
  doc: "[DENOVO [DENOVO ...]]\nA list of tables to store denovo variants for each\n\
    offspring. DeNovo variants are defined as offspring\nvariants that do not exist\
    \ in any of the parents,\nincluding the cases when the offspring have different\n\
    variants from what parents have at the same genomic\nlocations."
  type: boolean?
  inputBinding:
    prefix: --denovo
- id: in_recessive
  doc: "[RECESSIVE [RECESSIVE ...]]\nA list of tables to store recessive variants\
    \ for each\noffspring. Recessive variants are defined as variants\nthat are homozygous\
    \ in offspring, and heterozygous in\nboth parents."
  type: boolean?
  inputBinding:
    prefix: --recessive
- id: in_inconsistent
  doc: "[INCONSISTENT [INCONSISTENT ...]]\nA list of tables to store variants for\
    \ each offspring\nthat demonstrate mendelian inconsistencies, namely\nvariants\
    \ that are not passed from parents to offspring\nin a Mendelian fashion. Examples\
    \ of inconsistent\nvariants include de novo variants, homozygous variants\nin\
    \ offspring with only one parental carrier, wildtype\noffspring variants with\
    \ a homozygous parent,\nheterozygous offspring variants with two homozygous\n\
    parents, and more complicated cases when multiple\nvariants appear at the same\
    \ sites."
  type: boolean?
  inputBinding:
    prefix: --inconsistent
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_var_6
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- transmission
